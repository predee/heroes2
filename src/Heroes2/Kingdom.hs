-- Copyright (c) 2011 Alexander Poluektov (alexander.poluektov@gmail.com)
--
-- Use, modification and distribution are subject to the MIT license
-- (See accompanying file MIT-LICENSE)

module Heroes2.Kingdom where

import Heroes2.Hero

-- placeholders
data Castle = Castle
data Mine = Mine
data Lighthouse = Lighthouse
data Resources = Resources

data Kingdom = Kingdom { player        :: Player
                       , heroes        :: [Hero]
                       , castles       :: [Castle]
                       , resources     :: Resources
                       , mines         :: [Mine]
                       , lighthouses   :: [Lighthouse]
                       , heroesForHire :: [Hero]
                       }
