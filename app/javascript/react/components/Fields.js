const GROUP_A = ["France", "Norway", "South Korea", "Nigeria"]
const GROUP_B = ["Germany", "Spain", "South Africa", "China"]
const GROUP_C = ["Brazil", "Jamaica", "Italy", "Australia"]
const GROUP_D = ["England", "Scotland", "Japan", "Argentina"]
const GROUP_E = ["Canada", "New Zealand", "Cameroon", "Netherlands"]
const GROUP_F = ["Chile", "Thailand", "Sweden", "USA"]
const VALUE = [""]

const FIELDS = [
  {
    field: "pick_1",
    label: "2A",
    options: VALUE.concat(GROUP_A)
  },
  {
    field: "pick_2",
    label: "2C",
    options: VALUE.concat(GROUP_C)
  },
  {
    field: "pick_3",
    label: "1D",
    options: VALUE.concat(GROUP_D)
  },
  {
    field: "pick_4",
    label: "3B, 3E, 3F",
    options: VALUE.concat(GROUP_B).concat(GROUP_E).concat(GROUP_F)
  },
  {
    field: "pick_5",
    label: "1A",
    options: VALUE.concat(GROUP_A)
  },
  {
    field: "pick_6",
    label: "3C, 3D, 3E",
    options: VALUE.concat(GROUP_C).concat(GROUP_D).concat(GROUP_E)
  },
  {
    field: "pick_7",
    label: "1F",
    options: VALUE.concat(GROUP_F)
  },
  {
    field: "pick_8",
    label: "2B",
    options: VALUE.concat(GROUP_B)
  },
  {
    field: "pick_9",
    label: "1C",
    options: VALUE.concat(GROUP_C)
  },
  {
    field: "pick_10",
    label: "3A, 3B, 3F",
    options: VALUE.concat(GROUP_A).concat(GROUP_B).concat(GROUP_F)
  },
  {
    field: "pick_11",
    label: "1E",
    options: VALUE.concat(GROUP_E)
  },
  {
    field: "pick_12",
    label: "2D",
    options: VALUE.concat(GROUP_D)
  },
  {
    field: "pick_13",
    label: "1B",
    options: VALUE.concat(GROUP_B)
  },
  {
    field: "pick_14",
    label: "3A, 3C, or 3D",
    options: VALUE.concat(GROUP_A).concat(GROUP_C).concat(GROUP_D)
  },
  {
    field: "pick_15",
    label: "2F",
    options: VALUE.concat(GROUP_F)
  },
  {
    field: "pick_16",
    label: "2E",
    options: VALUE.concat(GROUP_E)
  }
]

export default FIELDS
