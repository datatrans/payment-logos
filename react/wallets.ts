import { ReactComponent as ApplePay } from '../assets/wallets/apple-pay.svg'
import { ReactComponent as GooglePay } from '../assets/wallets/google-pay.svg'

const WALLET_ICON_COMPONENTS = {
    ApplePay,
    GooglePay
}

export type WalletIconComponentsType = keyof typeof WALLET_ICON_COMPONENTS

export default WALLET_ICON_COMPONENTS
