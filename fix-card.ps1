$filePath = "c:\Users\pujar\OneDrive\Desktop\WEBSITE ASSSI\bakery-website\src\components\common\ProductCard.jsx"
$content = @"
import { useState } from 'react';
import { motion } from 'framer-motion';
import ScrollReveal from './ScrollReveal';

const FALLBACK_IMAGE = 'https://placehold.co/400x400/FFF8F0/D48C45?text=Bakery';

const ProductCard = ({ product, index }) => {
  const [imgSrc, setImgSrc] = useState(product.image);
  const [imgError, setImgError] = useState(false);

  const handleImageError = () => {
    if (!imgError) {
      setImgError(true);
      setImgSrc(FALLBACK_IMAGE);
    }
  };

  return (
    <ScrollReveal delay={index * 0.1}>
      <motion.div
        className="product-card"
        whileHover={{ y: -8, boxShadow: '0 20px 40px rgba(0,0,0,0.12)' }}
        transition={{ duration: 0.3, ease: 'easeOut' }}
      >
        <div className="product-card__image-wrapper">
          <img
            src={imgSrc}
            alt={product.name}
            className="product-card__image"
            loading="lazy"
            onError={handleImageError}
          />
          <div className="product-card__overlay">
            <button className="product-card__quick-view">Quick View</button>
          </div>
          <span className="product-card__category">{product.category}</span>
        </div>
        <div className="product-card__body">
          <h3 className="product-card__name">{product.name}</h3>
          <p className="product-card__description">{product.description}</p>
          <div className="product-card__footer">
            <span className="product-card__price">${product.price.toFixed(2)}</span>
            <motion.button
              className="product-card__add-btn"
              whileHover={{ scale: 1.05 }}
              whileTap={{ scale: 0.95 }}
            >
              <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round" className="product-card__cart-icon">
                <circle cx="9" cy="21" r="1" />
                <circle cx="20" cy="21" r="1" />
                <path d="M1 1h4l2.68 13.39a2 2 0 002 1.61h9.72a2 2 0 002-1.61L23 6H6" />
              </svg>
              Add to Cart
            </motion.button>
          </div>
      </motion.div>
    </ScrollReveal>
  );
};

export default ProductCard;
"@
[System.IO.File]::WriteAllText($filePath, $content, [System.Text.Encoding]::UTF8)
Write-Host "File written successfully"
</｜｜DSML｜｜parameter>
</｜｜DSML｜｜invoke>
</｜｜DSML｜｜tool_calls>
