-- Copyright (c) 2011 Alexander Poluektov (alexander.poluektov@gmail.com)
--
-- Use, modification and distribution are subject to the MIT license
-- (See accompanying file MIT-LICENSE)

module Heroes2.Race where

data Race = Knight
          | Barbarian
          | Sorceress
          | Necromancer
          | Warlock
          | Wizard
          | Neutral
            deriving (Show)
