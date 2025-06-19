export interface SerialPortsPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
