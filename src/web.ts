import { WebPlugin } from '@capacitor/core';

import type { SerialPortsPlugin } from './definitions';

export class SerialPortsWeb extends WebPlugin implements SerialPortsPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
