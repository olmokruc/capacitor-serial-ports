import { registerPlugin } from '@capacitor/core';

import type { SerialPortsPlugin } from './definitions';

const SerialPorts = registerPlugin<SerialPortsPlugin>('SerialPorts', {
  web: () => import('./web').then((m) => new m.SerialPortsWeb()),
});

export * from './definitions';
export { SerialPorts };
