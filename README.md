mosaic-server-prototype
=======================

## `/images`
Returns a static list of image urls in the following format

```javascript
{
  count: 250,
  images: {
    "localhost:2100/images/frame0.jpg",
    "localhost:2100/images/frame1.jpg",
    "localhost:2100/images/frame10.jpg",
    "localhost:2100/images/frame100.jpg",
    "localhost:2100/images/frame101.jpg",
    ...
    "localhost:2100/images/frame99.jpg",
  }
}
```