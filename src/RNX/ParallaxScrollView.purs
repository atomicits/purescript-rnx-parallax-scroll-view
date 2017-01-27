module RNX.ParallaxScrollView where

import Prelude
import RNX.Color (Color)
import RNX.Styles (StyleId)
import React.DOM.Props (Props, unsafeMkProps, unsafeFromPropsArray)
import React (createElement, ReactElement, ReactClass)

foreign import parallaxScrollViewClass :: forall props. ReactClass props

parallaxScrollView :: Array Props -> Array ReactElement -> ReactElement
parallaxScrollView props = createElement parallaxScrollViewClass (unsafeFromPropsArray props)

pxBackgroundColor :: Color -> Props
pxBackgroundColor c = unsafeMkProps "backgroundColor" (show c)

pxBackgroundSpeed :: Int -> Props
pxBackgroundSpeed = unsafeMkProps "backgroundSpeed"

pxContentBackgroundColor :: Color -> Props
pxContentBackgroundColor c = unsafeMkProps "contentBackgroundColor" (show c)

pxFadeOutForeground :: Boolean -> Props
pxFadeOutForeground = unsafeMkProps "fadeOutForeground"

pxOnChangeHeaderVisibility :: (Boolean -> Unit) -> Props
pxOnChangeHeaderVisibility = unsafeMkProps "onChangeHeaderVisibility"

pxParallaxHeaderHeight :: Int -> Props
pxParallaxHeaderHeight = unsafeMkProps "parallaxHeaderHeight"

pxRenderBackground :: (Unit -> ReactElement)  -> Props
pxRenderBackground = unsafeMkProps "renderBackground"

pxRenderFixedHeader :: (Unit -> ReactElement) -> Props
pxRenderFixedHeader = unsafeMkProps "renderFixedHeader"

pxRenderForeground :: (Unit -> ReactElement) -> Props
pxRenderForeground = unsafeMkProps "renderForeground"

pxRenderScrollComponent :: (Props -> ReactElement)  -> Props
pxRenderScrollComponent = unsafeMkProps "renderScrollComponent"

pxRenderStickyHeader :: (Unit -> ReactElement) -> Props
pxRenderStickyHeader = unsafeMkProps "renderStickyHeader"

pxStickyHeaderHeight :: Int -> Props
pxStickyHeaderHeight = unsafeMkProps "stickyHeaderHeight"

pxContentContainerStyle :: StyleId -> Props
pxContentContainerStyle = unsafeMkProps "contentContainerStyle"
