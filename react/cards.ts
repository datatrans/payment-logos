import { ReactComponent as AmericanExpress } from '../assets/cards/american-express.svg'
import { ReactComponent as CartesBancaires } from '../assets/cards/cartes-bancaires.svg'
import { ReactComponent as Dankort } from '../assets/cards/dankort.svg'
import { ReactComponent as Diners } from '../assets/cards/diners.svg'
import { ReactComponent as Discover } from '../assets/cards/discover.svg'
import { ReactComponent as Elo } from '../assets/cards/elo.svg'
import { ReactComponent as Hipercard } from '../assets/cards/hipercard.svg'
import { ReactComponent as Jcb } from '../assets/cards/jcb.svg'
import { ReactComponent as MaestroAlt } from '../assets/cards/maestro-alt.svg'
import { ReactComponent as Maestro } from '../assets/cards/maestro.svg'
import { ReactComponent as MastercardAlt } from '../assets/cards/mastercard-alt.svg'
import { ReactComponent as Mastercard } from '../assets/cards/mastercard.svg'
import { ReactComponent as Uatp } from '../assets/cards/uatp.svg'
import { ReactComponent as Unionpay } from '../assets/cards/unionpay.svg'
import { ReactComponent as Visa } from '../assets/cards/visa.svg'
import { ReactComponent as Vpay } from '../assets/cards/vpay.svg'

const CARD_ICON_COMPONENTS = {
    AmericanExpress,
    CartesBancaires,
    Dankort,
    Diners,
    Discover,
    Elo,
    Hipercard,
    Jcb,
    MaestroAlt,
    Maestro,
    MastercardAlt,
    Mastercard,
    Uatp,
    Unionpay,
    Visa,
    Vpay
}

export type CardIconComponentsType = keyof typeof CARD_ICON_COMPONENTS

export default CARD_ICON_COMPONENTS
