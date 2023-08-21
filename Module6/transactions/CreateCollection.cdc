import CryptoPoops from 0x02

transaction() {
  prepare(signer: AuthAccount) {
    // Check if a collection already exists in the account storage.
    if signer.borrow<&CryptoPoops.Collection>(from: /storage/CryptoPoopsCollection) != nil {
      log("You have an existing collection")
      return
    }

    // Create a collection in account storage.
    signer.save(<- CryptoPoops.createEmptyCollection(), to: /storage/CryptoPoopsCollection)

    // Link it to the public.
    signer.link<&CryptoPoops.Collection>(/public/CryptoPoopsCollection, target: /storage/CryptoPoopsCollection)

    log("Collection Created")
  }
}
