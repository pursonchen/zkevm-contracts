// SPDX-License-Identifier: AGPL-3.0

pragma solidity 0.8.15;

interface IPolygonZkEVMErrors {
    /**
     * @dev Thrown when the pending state timeout exceeds the _HALT_AGGREGATION_TIMEOUT
     */
    error PendingStateTimeoutExceedHaltAggregationTimeout();

    /**
     * @dev Thrown when the trusted aggregator timeout exceeds the _HALT_AGGREGATION_TIMEOUT
     */
    error TrustedAggregatorTimeoutExceedHaltAggregationTimeout();

    /**
     * @dev Thrown when the caller is not the admin
     */
    error OnlyAdmin();

    /**
     * @dev Thrown when the caller is not the trusted sequencer
     */
    error OnlyTrustedSequencer();

    /**
     * @dev Thrown when the caller is not the trusted aggregator
     */
    error OnlyTrustedAggregator();

    /**
     * @dev Thrown when try to sequence 0 batches
     */
    error SequenceZeroBatches();

    /**
     * @dev Thrown when an try to sequence or verify more batches than _MAX_VERIFY_BATCHES
     */
    error ExceedMaxVerifyBatches();

    /**
     * @dev Thrown when the forced data does not match
     */
    error ForcedDataDoesNotMatch();

    /**
     * @dev Thrown when the sequenced timestamp is below the forced minimum timestamp
     */
    error SequencedTimestampBelowForcedTimestamp();

    /**
     * @dev Thrown when a global exit root is not zero and does not exist
     */
    error GlobalExitRootNotExist();

    /**
     * @dev Thrown when transactions array length is above _MAX_TRANSACTIONS_BYTE_LENGTH.
     */
    error TransactionsLengthAboveMax();

    /**
     * @dev Thrown when a sequenced timestamp is not inside a correct range.
     */
    error SequencedTimestampInvalid();

    /**
     * @dev Thrown when are sequenced more force batches than actually were submitted, should be unreachable
     */
    error ForceBatchesOverflow();

    /**
     * @dev Thrown when are sequenced more force batches than actually were submitted
     */
    error TrustedAggregatorTimeoutNotExpired();

    /**
     * @dev Thrown when try to access a pending that does not exist
     */
    error PendingStateDoesNotExist();

    /**
     * @dev Thrown when the init num batch does not match with the one in the pending state
     */
    error InitNumBatchDoesNotMatchPendingState();

    /**
     * @dev Thrown when the old state root of certain batch does not exist
     */
    error OldStateRootDoesNotExist();

    /**
     * @dev Thrown when the init verification batch is above the last verification batch
     */
    error InitNumBatchAboveLastVerifiedBatch();

    /**
     * @dev Thrown when the final verification batch is below or equal the last verification batch
     */
    error FinalNumBatchBelowLastVerifiedBatch();

    /**
     * @dev Thrown when the zkproof is not valid
     */
    error InvalidProof();

    /**
     * @dev Thrown when try to consolidate a pending state not yet consolidable
     */
    error PendingStateNotConsolidable();

    /**
     * @dev Thrown when try to consolidate a pending state that is already consolidated or does not exist
     */
    error PendingStateInvalid();

    /**
     * @dev Thrown when the matic amount is below the necessary matic fee
     */
    error NotEnoughMaticAmount();

    /**
     * @dev Thrown when try to sequence a force batch using sequenceForceBatches and the
     * force timeout do not expired
     */
    error ForceBatchTimeoutNotExpired();

    /**
     * @dev Thrown when try to set a new trusted aggregator timeout equal or bigger than current one
     */
    error NewTrustedAggregatorTimeoutMustBeLower();

    /**
     * @dev Thrown when try to set a new pending state timeout equal or bigger than current one
     */
    error NewPendingStateTimeoutMustBeLower();

    /**
     * @dev Thrown when try to set a new multiplier batch fee in a invalid range of values
     */
    error InvalidRangeMultiplierBatchFee();

    /**
     * @dev Thrown when try to set a batch time target in a invalid range of values
     */
    error InvalidRangeBatchTimeTarget();

    /**
     * @dev Thrown when try to set a batch time target in a invalid range of values
     */
    error OnlyPendingAdmin();

    /**
     * @dev Thrown when final pending state num is not in a valid range
     */
    error FinalPendingStateNumInvalid();

    /**
     * @dev Thrown when the final num batch does not match with the one in the pending state
     */
    error FinalNumBatchDoesNotMatchPendingState();

    /**
     * @dev Thrown when the stored root matches the new root proving a different state
     */
    error StoredRootMustBeDifferentThanNewRoot();

    /**
     * @dev Thrown when the batch is already verified when trying to activate the emergency state
     */
    error BatchAlreadyVerified();

    /**
     * @dev Thrown when the batch is not sequenced or not the end of a sequence when trying to activate the emergency state
     */
    error BatchNotSequencedOrNotSequenceEnd();

    /**
     * @dev Thrown when the halt timeout is not expired when trying to activate the emergency state
     */
    error HaltTimeoutNotExpired();

    /**
     * @dev Thrown when the old accumulate input hash does not exist
     */
    error OldAccInputHashDoesNotExist();

    /**
     * @dev Thrown when the new accumulate input hash does not exist
     */
    error NewAccInputHashDoesNotExist();
}