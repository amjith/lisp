(setq eval-expression-print-length nil)

(require 'cl)

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

(defun describe-location (location map)
  (second (assoc location map)))

(describe-location 'living-room map)   ; Notice the ' in front of living-room but not in front of map. Lisp will treat map as code whereas living-room as data.
                                       ; So we look up the data "living-room" in the map.

(defun describe-path (path)
  `(there is a ,(second path) going, (first path) from here -))

(describe-path '(west door garden))

(defun describe-paths (location map)
  (apply #'append (mapcar #'describe-path (cddr (assoc location map)))))

(describe-paths 'living-room map)
