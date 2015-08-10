-- | Same as `Exists` but for type constructors with a row parameter.
module Data.Exists.Row (RowExists(), mkRowExists, runRowExists) where

import Unsafe.Coerce (unsafeCoerce)

foreign import data RowExists :: (# * -> *) -> *

mkRowExists :: forall f a. f a -> RowExists f
mkRowExists = unsafeCoerce

runRowExists :: forall f r. (forall a. f a -> r) -> RowExists f -> r
runRowExists = unsafeCoerce
