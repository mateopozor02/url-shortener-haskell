{-# LANGUAGE OverloadedStrings #-}

module ShortenerSpec (spec) where

import Test.Hspec
import Shortener (isValidUrl)

spec :: Spec
spec = describe "isValidUrl" $ do
  it "should validate a valid URL" $ do
    isValidUrl "http://example.com" `shouldBe` True
    isValidUrl "https://example.com" `shouldBe` True
    isValidUrl "www.example.com" `shouldBe` True
  it "should invalidate an invalid URL" $ do
    isValidUrl "example.com" `shouldBe` False
    isValidUrl "http://example" `shouldBe` False
    isValidUrl "https://example" `shouldBe` False
    isValidUrl "www.example" `shouldBe` False
    isValidUrl "ftp://example.com" `shouldBe` False
    isValidUrl "mailto:user@example.com" `shouldBe` False