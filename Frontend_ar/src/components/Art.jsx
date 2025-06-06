import React, {useState, useEffect} from 'react';
import { Link } from 'react-router-dom'; // Import Link from React Router
import {LiaPaintBrushSolid} from 'react-icons/lia';
import {IoPricetags} from 'react-icons/io5';
import {FaRegUser} from 'react-icons/fa';
import {CiTextAlignCenter} from 'react-icons/ci';
import {useParams} from 'react-router-dom';
import ArtCardGroup from './ArtCardGroup';
import {toast} from "react-toastify";
import Reviews from "./Reviews";
import QRCode from 'qrcode.react';
import route from "../utils/help";

function Art({role}) {
    const {id} = useParams();
    const [name, setName] = useState();
    const [price, setPrice] = useState();
    const [category, setCategory] = useState();
    const [artistId, setArtistId] = useState();
    const [image, setImage] = useState();
    const [desc, setDesc] = useState();
    const [itemExists, setItemExists] = useState(false); // Initialize with false
    const [artworks, setArtworks] = useState([]);
    const [artistName, setArtistName] = useState();
    const [reviews, setReviews] = useState([]);
    const [review, setReview] = useState([]);
    const [categoryName, setCategoryName] = useState();
    const [sold, setSold] = useState(false);
    const [showARView, setShowARView] = useState(false); // Initialize showARView state
    const [qrCodeValue, setQrCodeValue] = useState('');
    const [arContentURL, setArContentURL] = useState('');

    // Fetch art
    async function getArt() {
        window.scrollTo(0, 0);
        try {
            const res = await fetch(`${route}/artworks/artwork/${id}`);
            const data = await res.json();
            setName(data.title);
            setPrice(data.price);
            setCategory(data.category);
            setImage(data.image);
            setDesc(data.description);
            setArtistId(data.artist);
            setSold(data.sold);
            setItemExists(isItemInCart(id));
            document.title = !data.title ? "Invalid artwork" : data.title;
            if (data.code === 400) {
                // Handle the error condition appropriately
            }
        } catch (error) {
            // Handle the error condition appropriately
        }
    }

    // Fetch artworks
    async function getArtworks() {
        try {
            const res = await fetch(`${route}/artworks/all`);
            const data = await res.json();
            setArtworks(data);
        } catch (error) {
            // Handle the error condition appropriately
        }
    }

    // Fetch artist name
    async function getArtistName() {
        try {
            const res = await fetch(`${route}/users/user/${artistId}`);
            const data = await res.json();
            setArtistName(data.username);
        } catch (error) {
            // Handle the error condition appropriately
        }
    }

    // Fetch category name
    async function getCategoryName() {
        try {
            const res = await fetch(`${route}/categories/${category}`);
            const data = await res.json();
            setCategoryName(data.name);

        } catch (error) {
            // Handle the error condition appropriately
        }
    }

    useEffect(() => {
        getArtworks().catch(error => {/* Handle error */
        });
    }, []);

    useEffect(() => {
        getArt().catch(error => {/* Handle error */
        });
    }, [id]);

    useEffect(() => {
        if (category)
            getCategoryName().catch(error => {
            });
    }, [category]);

    useEffect(() => {
        if (artistId > 0 || artistId != null) {
            getArtistName().catch(error => {/* Handle error */
            });
        }
    }, [artistId]);

    // Function to check if item is in cart
    const isItemInCart = (itemId) => {
        try {
            const cartItems = JSON.parse(localStorage.getItem('cart')) || [];
            return cartItems.some(item => item.id === itemId);
        } catch (error) {
            // Handle the error condition appropriately
            return false;
        }
    };

    // Function to handle adding/removing item to/from cart
    const handleAddToCart = () => {
        try {
            const cartItems = JSON.parse(localStorage.getItem('cartItems')) || [];
            const isItemInCart = cartItems.some(item => item.id === id);

            if (isItemInCart) {
                const updatedCart = cartItems.filter(item => item.id !== id);
                localStorage.setItem('cartItems', JSON.stringify(updatedCart));
                setItemExists(false);
            } else {
                const newItem = {id, name, price, artist: artistName, category: categoryName, image};
                cartItems.push(newItem);
                localStorage.setItem('cartItems', JSON.stringify(cartItems));
                setItemExists(true);
            }
        } catch (error) {
            // Handle the error condition appropriately
        }
    };

    async function handleAddReview() {
        try {
            const res = await fetch(`${route}/reviews/add`, {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                    'authorization': `Bearer ${localStorage.getItem('token')}`
                },
                body: JSON.stringify({
                    artwork_id: id,
                    review: review
                })
            });
            //
            // if (!res.ok) {
            //     throw new Error('Failed to add review');
            // }

            const data = await res.json();
            if (data?.id > 0) {
                getReviews();
                toast(`Review added successfully`, {type: "success"})
                setReview("");
            }
            if (data.code == 400) {
                toast(`Review not added`, {type: "error"})
            }
        } catch (error) {
            // Handle the error condition appropriately
        }
    }

    //get reviews by artid
    async function getReviews() {
        try {
            const res = await fetch(`${route}/reviews/post/${id}`);
            const data = await res.json();
            if (data.code == 400) {
                toast(`No reviews found`, {type: "error"})
            } else {
                setReviews(data);
            }
        } catch (error) {
            // Handle the error condition appropriately
        }
    }

    useEffect(() => {
        getReviews().catch(error => {
        });
    }, [id]);

    function goToLogin() {
        window.location.href = '/login'
    }
    
    const handleViewARClick = () => {
        // Assuming  AR content URL is located in the public directory and named ARContent.html
        const arContentURL = `${window.location.origin}/ARContent.html?artworkId=${id}`;
    
        // Set the QR code value and URL state variables
        setQrCodeValue(arContentURL);
        setArContentURL(arContentURL);
    
        // Set showARView to true to display QR code and URL
        setShowARView(true);
    
        // Store the AR content data in localStorage
        localStorage.setItem('arContentData', JSON.stringify({ qrCodeValue: arContentURL }));
    
        // Redirect the user to ARViewPage
        window.location.href = '/ar-view';
    };
    
    
    return (
        <div className={`mt-8`}>
            {artistId &&
                <>
                    <div className={`grid md:grid-cols-2`}>
                        <img className={`max-h-[750px] w-full object-cover`}
                             src={`${route}/image/${image}`}
                             alt=""/>
                        <div className={`flex mt-5 sm:mt-0 sm flex-col justify-between md:px-6 `}>
                            <div>
                                <p className={`font-semibold text-lg`}>{name}</p>
                                <div className={`flex items-center gap-2`}>
                                    <IoPricetags/>
                                    <p>Rs.{price}</p>
                                </div>
                                <div className={`flex items-center gap-2`}>
                                    <LiaPaintBrushSolid/>
                                    <p>{categoryName}</p>
                                </div>
                                <div className={`flex items-center gap-2`}>
                                    <FaRegUser/>
                                    <p>{artistName}</p>
                                </div>
                                <div className={`flex items-center gap-2`}>
                                    <CiTextAlignCenter/>
                                    <p>{desc}</p>
                                </div>
                            </div>
                            <Link to="/ar-view">
                               <button
                                   onClick={() => handleViewARClick(id)} // Pass the id of the artwork
                                   className={`border-4 w-full border-black-900 mt-4  py-1.5 rounded-2xl font-bold text-black-500 hover:bg-blue-100 transition`}
                               >
                                    View in AR
                                </button>
                           </Link>
                            {/* Conditionally render QR code and URL when showARView is true */}
                            {showARView && (
                                <div>
                                      <p>URL: {arContentURL}</p> {/* Display the AR content URL */}
                                     <QRCode value={qrCodeValue} /> {/* Generate QR code for the AR content URL */}
                                </div>
                            )}

                            {role !== `artist` && <button
                                onClick={localStorage.getItem('token') ? handleAddToCart : goToLogin}
                                className={`border-4 border-black-500 mt-4  py-1.5 rounded-2xl font-bold text--500 hover:bg-rose-100 transition`}
                            >

                                {!localStorage.getItem('token') ? "Login" : itemExists ? 'Remove from Cart' : 'Add to Cart'}
                            </button>}

                        </div>
                    </div>
                    
                    <div className={`mt-16`}>
                        <textarea value={review}
                                  onChange={event => setReview(event.target.value)}
                                  className={`border resize-none rounded border-gray-400 w-full px-2 py-1 outline-none`}
                                  name="review"
                                  id="review"
                                  cols="30"
                                  placeholder={`Write a review for ${name}...`}
                                  rows={`6`}/>
                        <button
                            onClick={handleAddReview}
                            className={`border-4 w-full border-black-900 mt-4  py-1.5 rounded-2xl font-bold text-black-500 hover:bg-blue-100 transition`}
                        >
                            Submit Review
                        </button>
                        <Reviews data={reviews}/>
                    </div>
                    <div className={`mt-16`}>
                        <ArtCardGroup data={artworks.slice(0, 8)} title={`More like this.`}/>
                    </div>
                </>
            }
            {!artistId && <div className={`h-[700px] text-2xl flex justify-center items-center`}>
                Artwork not found.
            </div>}
        </div>
    );
}

export default Art;