-- Copyright (c) 2011 Alexander Poluektov (alexander.poluektov@gmail.com)
--
-- Use, modification and distribution are subject to the MIT license
-- (See accompanying file MIT-LICENSE)

module Heroes2.Hero where

import Data.Array

import Heroes2.Race

-- placeholders
data Monster = Monster
data Skill = Skill
data Artefact = Artefact
data Event = Event
data Player = Player
data Coords = Coords

data Hero = Hero { identity       :: HeroId
                 , player         :: Maybe Player
                 , exp            :: Int
                 , level          :: Int
                 , baseAttack     :: Int
                 , baseDefence    :: Int
                 , baseSpellPower :: Int
                 , baseKnowledge  :: Int
                 , army           :: Array Int Monster
                 , skills         :: Array Int Skill
                 , artefacts      :: Array Int Artefact
                 , events         :: Array Int Event
                 , turnState      :: HeroTurnState
                 , coords         :: Coords
                 , formation      :: Formation
                 }

instance Eq Hero where
    h1 == h2 = name (identity h1) == name (identity h2)

data HeroId = HeroId { name   :: String
                     , race   :: Race
                     , gender :: Gender 
                     }

data HeroTurnState = HeroTurnState { mana       :: Int
                                   , movePoints :: Int
                                   }            

data Gender = Male | Female

data Formation = Dense | Sparse
