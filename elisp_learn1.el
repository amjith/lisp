(setq eval-expression-print-length nil)
(setq objects '(whiskey-bottle bucket frog chain))

(setq map '((living-room (you are in the living room
                of a wizards house - there is a wizard
                snoring loudly on the couch -)
                (west door garden)
                (upstairs stairway attic))
              (garden (you are in a beautiful garden -
                there is a well in front of you -)
                (east door living-room))
              (attic (you are in the attic of the
                wizards house - there is a giant
                welding torch in the corner -)
                (downstairs stairway living-room))))

(setq object-locations '((whiskey-bottle living-room)
                           (bucket living-room)
                           (chain garden)
                           (frog garden)))


(setq location 'living-room)

