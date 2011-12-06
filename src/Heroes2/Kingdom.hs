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

-- TODO: just proof of concept, interface should be better

type HeroZipper = (Hero, Kingdom)

toHero :: Kingdom -> Hero -> HeroZipper
toHero k h = (h, rest)
    where rest = k { heroes = restHeroes }
          restHeroes = filter (/= h) (heroes k)
