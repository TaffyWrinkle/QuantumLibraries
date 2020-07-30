// Copyright (c) Microsoft Corporation.
// Licensed under the MIT License.

namespace Microsoft.Quantum.Diagnostics {
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Canon;


    /// # Summary
    /// Between a call to this operation and its adjoint, asserts that
    /// a given operation is called at most a certain number of times.
    ///
    /// # Input
    /// ## nTimes
    /// The maximum number of times that `op` may be called.
    /// ## op
    /// An operation whose calls are to be restricted.
    ///
    /// # Example
    /// The following snippet will fail when executed on machines which
    /// support this diagnostic:
    /// ```Q#
    /// using (register = Qubit[4]) {
    ///     within {
    ///         AllowAtMostNCallsCA(3, H);
    ///     } apply {
    ///         // Fails since this calls H four times, rather than the
    ///         // allowed maximum of three.
    ///         ApplyToEach(H, register);
    ///     }
    /// }
    /// ```
    ///
    /// # Remarks
    /// This operation may be replaced by a no-op on targets which do not
    /// support it.
    operation AllowAtMostNCallsCA<'TInput, 'TOutput>(
        nTimes : Int, op : ('TInput => 'TOutput is Adj + Ctl)
    )
    : Unit is Adj {
    }

}
