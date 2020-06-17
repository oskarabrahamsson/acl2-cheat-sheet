===============================================================================
= ACL2 CHEAT SHEET                                                            =
===============================================================================


COMMAND                 DESCRIPTION
-------------------------------------------------------------------------------

(exit)                  Exit the lisp.
(quit)                  --------""--------
(good-bye)              --------""--------
^D                      --------""--------
:q                      Exit ACL2 (stay in the lisp).
:lb                     Start ACL2 (from the lisp).
^C/Signal-2             Interrupt current event (e.g. slow proof)

:doc KEYWORD            View documentation on KEYWORD.

:ubt FN                 Undo until before definition of FN.
:u                      Undo last command.
:ubt! :max              --------""--------
:ubt! :x                --------""--------
:oops                   Undo last :ubt.

:args FN                Metainformation for function FN (e.g. guard)
:pe t                   Definition information for t

(defthm ...)            Prove a theorem.
(defthmd ...)           Prove a theorem and then disable it.
(defmacro ...)          Define a macro.
(defun ...)             Define a function.
(defconst ...)          Define a constant. Constants need their names to be
                        enclosed in asterisks like *this-constant*.

(set-gag-mode ...)      Set the prover chattiness.
(gag-mode)              Check what the current chattiness setting is.
:pso                    Print stored output - last event at full verbosity
:psof "filename"        Print stored output to a file

(start-proof-tree)      Enter a mode where annotated proof trees are printed
                        on failed attempts.
(stop-proof-tree)       Exit the proof tree mode.


(There appears to be more xxxd-forms of the above, e.g. defund.)

GUARDS
-------------------------------------------------------------------------------

Declaration:

(defun my-function (formals)
    (declare (xargs :guard (<predicate-on> formals)))
    <body>)

EQUALITY
-------------------------------------------------------------------------------

(In the ACL2 logic, eq and equal are the same.)

=                       Equality between numbers
eq                      Pointer equality
eql                     Both of the above combined, with priority to =
equal                   Structural equality

