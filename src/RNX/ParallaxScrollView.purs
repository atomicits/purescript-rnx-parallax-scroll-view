module RNX.ParallaxScrollView where

import Prelude
import RNX.Color (Color)
import RNX.Styles (StyleId)
import React.DOM.Props (Props, unsafeMkProps, unsafeFromPropsArray)
import React (createElement, ReactElement, ReactClass)

foreign import parallaxScrollViewClass :: forall props. ReactClass props

parallaxScrollView :: forall action. Array Props -> Array ReactElement -> ReactElement
parallaxScrollView props = createElement parallaxScrollViewClass (unsafeFromPropsArray props)

pxBackgroundColor :: forall action. Color -> Props
pxBackgroundColor = unsafeMkProps "backgroundColor"

pxBackgroundSpeed :: forall action. Int -> Props
pxBackgroundSpeed = unsafeMkProps "backgroundSpeed"

pxContentBackgroundColor :: forall action. Color -> Props
pxContentBackgroundColor = unsafeMkProps "contentBackgroundColor"

pxFadeOutForeground :: forall action. Boolean -> Props
pxFadeOutForeground = unsafeMkProps "fadeOutForeground"

pxOnChangeHeaderVisibility :: forall action. (Boolean -> Unit) -> Props
pxOnChangeHeaderVisibility = unsafeMkProps "onChangeHeaderVisibility"

pxParallaxHeaderHeight :: forall action. Int -> Props
pxParallaxHeaderHeight = unsafeMkProps "parallaxHeaderHeight"

pxRenderBackground :: forall action. ( Unit -> ReactElement)  -> Props
pxRenderBackground = unsafeMkProps "renderBackground"

pxRenderFixedHeader :: forall action. ( Unit -> ReactElement ) -> Props
pxRenderFixedHeader = unsafeMkProps "renderFixedHeader"

pxRenderForeground :: forall action. ( Unit -> ReactElement ) -> Props
pxRenderForeground = unsafeMkProps "renderForeground"

pxRenderScrollComponent :: forall action. (Props -> ReactElement)  -> Props
pxRenderScrollComponent = unsafeMkProps "renderScrollComponent"

pxRenderStickyHeader :: forall action. ( Unit -> ReactElement ) -> Props
pxRenderStickyHeader = unsafeMkProps "renderStickyHeader"

pxStickyHeaderHeight :: forall action. Int -> Props
pxStickyHeaderHeight = unsafeMkProps "stickyHeaderHeight"

pxContentContainerStyle :: forall action. StyleId -> Props
pxContentContainerStyle = unsafeMkProps "contentContainerStyle"
