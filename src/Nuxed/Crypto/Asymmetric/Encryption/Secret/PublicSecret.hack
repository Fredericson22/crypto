namespace Nuxed\Crypto\Asymmetric\Encryption\Secret;

use namespace Nuxed\Crypto;
use namespace Nuxed\Crypto\Binary;
use namespace Nuxed\Crypto\Asymmetric\Encryption;

final class PublicSecret extends Encryption\Secret {
  const int LENGTH = \SODIUM_CRYPTO_BOX_PUBLICKEYBYTES;
  public function __construct(Crypto\HiddenString $material) {
    if (Binary\length($material->toString()) !== static::LENGTH) {
      throw new Crypto\Exception\InvalidSecretException(
        'Encryption public secret must be const(PublicSecret::LENGTH) bytes long',
      );
    }

    parent::__construct($material);
  }
}