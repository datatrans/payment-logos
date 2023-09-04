import { ReactComponent as CardGenericAlt } from '../assets/generic/card-generic-alt.svg'
import { ReactComponent as CardGenericGold } from '../assets/generic/card-generic-gold.svg'
import { ReactComponent as CardGeneric } from '../assets/generic/card-generic.svg'
import { ReactComponent as GiftCardGenericAlt } from '../assets/generic/gift-card-generic-alt.svg'
import { ReactComponent as GiftCardGenericGold } from '../assets/generic/gift-card-generic-gold.svg'
import { ReactComponent as GiftCardGeneric } from '../assets/generic/gift-card-generic.svg'
import { ReactComponent as Invoice } from '../assets/generic/invoice.svg'

const GENERIC_ICON_COMPONENTS = {
    CardGenericAlt,
    CardGenericGold,
    CardGeneric,
    GiftCardGenericAlt,
    GiftCardGenericGold,
    GiftCardGeneric,
    Invoice
}

export type GenericIconComponentsType = keyof typeof GENERIC_ICON_COMPONENTS

export default GENERIC_ICON_COMPONENTS
