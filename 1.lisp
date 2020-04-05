;; Chapter

(setf names
      '((John Q Public)
        (Malcolm X)
        (Admiral Grace Murray Hopper)
        (Spot) 
        (Aristotle)
        (A A Milne)
        (Z Z Top)
        (Sir Larry Olivier)
        (Miss Scarlet)))

(defparameter *titles*
  '(Mr Mrs Miss Ms Sir Madam Dr Admiral Major General)
  "A list of titles that can appear at the start of a name.")

(defun first-name (name)
  "Select the first name from a name represented as a list."
  (if (member (first name) *titles*)
      (first-name (rest name))
      (first name)))

(defun last-name (name)
  "Select the last name from a name represented as a list."
  (first (last name)))

(defun mappend (fn the-list)
  "Apply fn to each element of list and append the result."
  (apply #'append (mapcar fn the-list)))

(defun self-and-double (x)
  (list x (+ x x)))

(defun numbers-and-negations (input)
  "Given a list, return only the numbers and their negations."
  (mappend #'number-and-negation input))

(defun number-and-negation (x)
  "If x is a number, return a list of x and -x."
  (if (numberp x)
      (list x (- x))
      nil))


;; Exercises

(defun power (b p)
  "Raise a number to an integer power."
  (if (< p 0)
      (/ 1 (power b (- p)))
      (if (= 0 p)
          1
          b * (power b (1- p))))) 
