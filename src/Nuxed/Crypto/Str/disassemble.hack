namespace Nuxed\Crypto\Str;

/**
 * Turn a string into a container of integers
 */
function disassemble(string $str): Container<int> {
  return vec<int>(\unpack('C*', $str));
}
