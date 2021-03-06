EXPORT MobilityApple := MODULE

EXPORT filepath := '~hpccsystems::covid19::file::public::mobility::apple::daily.flat';
EXPORT layout := RECORD
    STRING geo_type;
    STRING region;
    STRING transportation_type;
    STRING alternative_name;
    STRING sub_region;
    STRING country;
    DECIMAL8_3 d2020_01_13;
    DECIMAL8_3 d2020_01_14;
    DECIMAL8_3 d2020_01_15;
    DECIMAL8_3 d2020_01_16;
    DECIMAL8_3 d2020_01_17;
    DECIMAL8_3 d2020_01_18;
    DECIMAL8_3 d2020_01_19;
    DECIMAL8_3 d2020_01_20;
    DECIMAL8_3 d2020_01_21;
    DECIMAL8_3 d2020_01_22;
    DECIMAL8_3 d2020_01_23;
    DECIMAL8_3 d2020_01_24;
    DECIMAL8_3 d2020_01_25;
    DECIMAL8_3 d2020_01_26;
    DECIMAL8_3 d2020_01_27;
    DECIMAL8_3 d2020_01_28;
    DECIMAL8_3 d2020_01_29;
    DECIMAL8_3 d2020_01_30;
    DECIMAL8_3 d2020_01_31;
    DECIMAL8_3 d2020_02_01;
    DECIMAL8_3 d2020_02_02;
    DECIMAL8_3 d2020_02_03;
    DECIMAL8_3 d2020_02_04;
    DECIMAL8_3 d2020_02_05;
    DECIMAL8_3 d2020_02_06;
    DECIMAL8_3 d2020_02_07;
    DECIMAL8_3 d2020_02_08;
    DECIMAL8_3 d2020_02_09;
    DECIMAL8_3 d2020_02_10;
    DECIMAL8_3 d2020_02_11;
    DECIMAL8_3 d2020_02_12;
    DECIMAL8_3 d2020_02_13;
    DECIMAL8_3 d2020_02_14;
    DECIMAL8_3 d2020_02_15;
    DECIMAL8_3 d2020_02_16;
    DECIMAL8_3 d2020_02_17;
    DECIMAL8_3 d2020_02_18;
    DECIMAL8_3 d2020_02_19;
    DECIMAL8_3 d2020_02_20;
    DECIMAL8_3 d2020_02_21;
    DECIMAL8_3 d2020_02_22;
    DECIMAL8_3 d2020_02_23;
    DECIMAL8_3 d2020_02_24;
    DECIMAL8_3 d2020_02_25;
    DECIMAL8_3 d2020_02_26;
    DECIMAL8_3 d2020_02_27;
    DECIMAL8_3 d2020_02_28;
    DECIMAL8_3 d2020_02_29;
    DECIMAL8_3 d2020_03_01;
    DECIMAL8_3 d2020_03_02;
    DECIMAL8_3 d2020_03_03;
    DECIMAL8_3 d2020_03_04;
    DECIMAL8_3 d2020_03_05;
    DECIMAL8_3 d2020_03_06;
    DECIMAL8_3 d2020_03_07;
    DECIMAL8_3 d2020_03_08;
    DECIMAL8_3 d2020_03_09;
    DECIMAL8_3 d2020_03_10;
    DECIMAL8_3 d2020_03_11;
    DECIMAL8_3 d2020_03_12;
    DECIMAL8_3 d2020_03_13;
    DECIMAL8_3 d2020_03_14;
    DECIMAL8_3 d2020_03_15;
    DECIMAL8_3 d2020_03_16;
    DECIMAL8_3 d2020_03_17;
    DECIMAL8_3 d2020_03_18;
    DECIMAL8_3 d2020_03_19;
    DECIMAL8_3 d2020_03_20;
    DECIMAL8_3 d2020_03_21;
    DECIMAL8_3 d2020_03_22;
    DECIMAL8_3 d2020_03_23;
    DECIMAL8_3 d2020_03_24;
    DECIMAL8_3 d2020_03_25;
    DECIMAL8_3 d2020_03_26;
    DECIMAL8_3 d2020_03_27;
    DECIMAL8_3 d2020_03_28;
    DECIMAL8_3 d2020_03_29;
    DECIMAL8_3 d2020_03_30;
    DECIMAL8_3 d2020_03_31;
    DECIMAL8_3 d2020_04_01;
    DECIMAL8_3 d2020_04_02;
    DECIMAL8_3 d2020_04_03;
    DECIMAL8_3 d2020_04_04;
    DECIMAL8_3 d2020_04_05;
    DECIMAL8_3 d2020_04_06;
    DECIMAL8_3 d2020_04_07;
    DECIMAL8_3 d2020_04_08;
    DECIMAL8_3 d2020_04_09;
    DECIMAL8_3 d2020_04_10;
    DECIMAL8_3 d2020_04_11;
    DECIMAL8_3 d2020_04_12;
    DECIMAL8_3 d2020_04_13;
    DECIMAL8_3 d2020_04_14;
    DECIMAL8_3 d2020_04_15;
    DECIMAL8_3 d2020_04_16;
    DECIMAL8_3 d2020_04_17;
    DECIMAL8_3 d2020_04_18;
    DECIMAL8_3 d2020_04_19;
    DECIMAL8_3 d2020_04_20;
    DECIMAL8_3 d2020_04_21;
    DECIMAL8_3 d2020_04_22;
    DECIMAL8_3 d2020_04_23;
    DECIMAL8_3 d2020_04_24;
    DECIMAL8_3 d2020_04_25;
    DECIMAL8_3 d2020_04_26;
    DECIMAL8_3 d2020_04_27;
    DECIMAL8_3 d2020_04_28;
    DECIMAL8_3 d2020_04_29;
    DECIMAL8_3 d2020_04_30;
    DECIMAL8_3 d2020_05_01;
    DECIMAL8_3 d2020_05_02;
    DECIMAL8_3 d2020_05_03;
    DECIMAL8_3 d2020_05_04;
    DECIMAL8_3 d2020_05_05;
    DECIMAL8_3 d2020_05_06;
    DECIMAL8_3 d2020_05_07;
    DECIMAL8_3 d2020_05_08;
    DECIMAL8_3 d2020_05_09;
    DECIMAL8_3 d2020_05_10;
    DECIMAL8_3 d2020_05_11;
    DECIMAL8_3 d2020_05_12;
    DECIMAL8_3 d2020_05_13;
    DECIMAL8_3 d2020_05_14;
    DECIMAL8_3 d2020_05_15;
    DECIMAL8_3 d2020_05_16;
    DECIMAL8_3 d2020_05_17;
    DECIMAL8_3 d2020_05_18;
    DECIMAL8_3 d2020_05_19;
    DECIMAL8_3 d2020_05_20;
    DECIMAL8_3 d2020_05_21;
    DECIMAL8_3 d2020_05_22;
    DECIMAL8_3 d2020_05_23;
    DECIMAL8_3 d2020_05_24;
    DECIMAL8_3 d2020_05_25;
    DECIMAL8_3 d2020_05_26;
    DECIMAL8_3 d2020_05_27;
    DECIMAL8_3 d2020_05_28;
    DECIMAL8_3 d2020_05_29;
    DECIMAL8_3 d2020_05_30;
    DECIMAL8_3 d2020_05_31;
    DECIMAL8_3 d2020_06_01;
    DECIMAL8_3 d2020_06_02;
    DECIMAL8_3 d2020_06_03;
    DECIMAL8_3 d2020_06_04;
    DECIMAL8_3 d2020_06_05;
    DECIMAL8_3 d2020_06_06;
    DECIMAL8_3 d2020_06_07;
    DECIMAL8_3 d2020_06_08;
    DECIMAL8_3 d2020_06_09;
    DECIMAL8_3 d2020_06_10;
    DECIMAL8_3 d2020_06_11;
    DECIMAL8_3 d2020_06_12;
    DECIMAL8_3 d2020_06_13;
    DECIMAL8_3 d2020_06_14;
    DECIMAL8_3 d2020_06_15;
    DECIMAL8_3 d2020_06_16;
    DECIMAL8_3 d2020_06_17;
    DECIMAL8_3 d2020_06_18;
    DECIMAL8_3 d2020_06_19;
    DECIMAL8_3 d2020_06_20;
    DECIMAL8_3 d2020_06_21;
    DECIMAL8_3 d2020_06_22;
    DECIMAL8_3 d2020_06_23;
    DECIMAL8_3 d2020_06_24;
    DECIMAL8_3 d2020_06_25;
    DECIMAL8_3 d2020_06_26;
    DECIMAL8_3 d2020_06_27;
    DECIMAL8_3 d2020_06_28;
    DECIMAL8_3 d2020_06_29;
    DECIMAL8_3 d2020_06_30;
    DECIMAL8_3 d2020_07_01;
    DECIMAL8_3 d2020_07_02;
    DECIMAL8_3 d2020_07_03;
    DECIMAL8_3 d2020_07_04;
    DECIMAL8_3 d2020_07_05;
    DECIMAL8_3 d2020_07_06;
    DECIMAL8_3 d2020_07_07;
    DECIMAL8_3 d2020_07_08;
    DECIMAL8_3 d2020_07_09;
    DECIMAL8_3 d2020_07_10;
    DECIMAL8_3 d2020_07_11;
    DECIMAL8_3 d2020_07_12;
    DECIMAL8_3 d2020_07_13;
    DECIMAL8_3 d2020_07_14;
    DECIMAL8_3 d2020_07_15;
    DECIMAL8_3 d2020_07_16;
    DECIMAL8_3 d2020_07_17;
    DECIMAL8_3 d2020_07_18;
    DECIMAL8_3 d2020_07_19;
    DECIMAL8_3 d2020_07_20;
    DECIMAL8_3 d2020_07_21;
    DECIMAL8_3 d2020_07_22;
    DECIMAL8_3 d2020_07_23;
    DECIMAL8_3 d2020_07_24;
    DECIMAL8_3 d2020_07_25;
    DECIMAL8_3 d2020_07_26;
    DECIMAL8_3 d2020_07_27;
    DECIMAL8_3 d2020_07_28;
    DECIMAL8_3 d2020_07_29;
    DECIMAL8_3 d2020_07_30;
    DECIMAL8_3 d2020_07_31;
    DECIMAL8_3 d2020_08_01;
    DECIMAL8_3 d2020_08_02;
    DECIMAL8_3 d2020_08_03;
    DECIMAL8_3 d2020_08_04;
    DECIMAL8_3 d2020_08_05;
    DECIMAL8_3 d2020_08_06;
    DECIMAL8_3 d2020_08_07;
    DECIMAL8_3 d2020_08_08;
    DECIMAL8_3 d2020_08_09;
    DECIMAL8_3 d2020_08_10;
    DECIMAL8_3 d2020_08_11;
    DECIMAL8_3 d2020_08_12;
    DECIMAL8_3 d2020_08_13;
    DECIMAL8_3 d2020_08_14;
    DECIMAL8_3 d2020_08_15;
    DECIMAL8_3 d2020_08_16;
    DECIMAL8_3 d2020_08_17;
    DECIMAL8_3 d2020_08_18;
    DECIMAL8_3 d2020_08_19;
    DECIMAL8_3 d2020_08_20;
    DECIMAL8_3 d2020_08_21;
    DECIMAL8_3 d2020_08_22;
    DECIMAL8_3 d2020_08_23;
    DECIMAL8_3 d2020_08_24;
    DECIMAL8_3 d2020_08_25;
    DECIMAL8_3 d2020_08_26;
    DECIMAL8_3 d2020_08_27;
    DECIMAL8_3 d2020_08_28;
    DECIMAL8_3 d2020_08_29;
    DECIMAL8_3 d2020_08_30;
    DECIMAL8_3 d2020_08_31;
    DECIMAL8_3 d2020_09_01;
    DECIMAL8_3 d2020_09_02;
    DECIMAL8_3 d2020_09_03;
    DECIMAL8_3 d2020_09_04;
    DECIMAL8_3 d2020_09_05;
    DECIMAL8_3 d2020_09_06;
    DECIMAL8_3 d2020_09_07;
    DECIMAL8_3 d2020_09_08;
    DECIMAL8_3 d2020_09_09;
    DECIMAL8_3 d2020_09_10;
    DECIMAL8_3 d2020_09_11;
    DECIMAL8_3 d2020_09_12;
    DECIMAL8_3 d2020_09_13;
    DECIMAL8_3 d2020_09_14;
    DECIMAL8_3 d2020_09_15;
    DECIMAL8_3 d2020_09_16;
    DECIMAL8_3 d2020_09_17;
    DECIMAL8_3 d2020_09_18;
    DECIMAL8_3 d2020_09_19;
    DECIMAL8_3 d2020_09_20;
    DECIMAL8_3 d2020_09_21;
    DECIMAL8_3 d2020_09_22;
    DECIMAL8_3 d2020_09_23;
    DECIMAL8_3 d2020_09_24;
    DECIMAL8_3 d2020_09_25;
    DECIMAL8_3 d2020_09_26;
    DECIMAL8_3 d2020_09_27;
    DECIMAL8_3 d2020_09_28;
    DECIMAL8_3 d2020_09_29;
    DECIMAL8_3 d2020_09_30;
    DECIMAL8_3 d2020_10_01;
    DECIMAL8_3 d2020_10_02;
    DECIMAL8_3 d2020_10_03;
    DECIMAL8_3 d2020_10_04;
    DECIMAL8_3 d2020_10_05;
    DECIMAL8_3 d2020_10_06;
    DECIMAL8_3 d2020_10_07;
    DECIMAL8_3 d2020_10_08;
    DECIMAL8_3 d2020_10_09;
    DECIMAL8_3 d2020_10_10;
    DECIMAL8_3 d2020_10_11;
    DECIMAL8_3 d2020_10_12;
    DECIMAL8_3 d2020_10_13;
    DECIMAL8_3 d2020_10_14;
    DECIMAL8_3 d2020_10_15;
    DECIMAL8_3 d2020_10_16;
    DECIMAL8_3 d2020_10_17;
    DECIMAL8_3 d2020_10_18;
    DECIMAL8_3 d2020_10_19;
    DECIMAL8_3 d2020_10_20;
    DECIMAL8_3 d2020_10_21;
    DECIMAL8_3 d2020_10_22;
    DECIMAL8_3 d2020_10_23;
    DECIMAL8_3 d2020_10_24;
    DECIMAL8_3 d2020_10_25;
    DECIMAL8_3 d2020_10_26;
    DECIMAL8_3 d2020_10_27;
    DECIMAL8_3 d2020_10_28;
    DECIMAL8_3 d2020_10_29;
    DECIMAL8_3 d2020_10_30;
    DECIMAL8_3 d2020_10_31;
    DECIMAL8_3 d2020_11_01;
    DECIMAL8_3 d2020_11_02;
    DECIMAL8_3 d2020_11_03;
    DECIMAL8_3 d2020_11_04;
    DECIMAL8_3 d2020_11_05;
    DECIMAL8_3 d2020_11_06;
    DECIMAL8_3 d2020_11_07;
    DECIMAL8_3 d2020_11_08;
    DECIMAL8_3 d2020_11_09;
    DECIMAL8_3 d2020_11_10;
    DECIMAL8_3 d2020_11_11;
    DECIMAL8_3 d2020_11_12;
    DECIMAL8_3 d2020_11_13;
    DECIMAL8_3 d2020_11_14;
    DECIMAL8_3 d2020_11_15;
    DECIMAL8_3 d2020_11_16;
    DECIMAL8_3 d2020_11_17;
    DECIMAL8_3 d2020_11_18;
    DECIMAL8_3 d2020_11_19;
    DECIMAL8_3 d2020_11_20;
    DECIMAL8_3 d2020_11_21;
    DECIMAL8_3 d2020_11_22;
    DECIMAL8_3 d2020_11_23;
    DECIMAL8_3 d2020_11_24;
    DECIMAL8_3 d2020_11_25;
    DECIMAL8_3 d2020_11_26;
    DECIMAL8_3 d2020_11_27;
    DECIMAL8_3 d2020_11_28;
    DECIMAL8_3 d2020_11_29;
    DECIMAL8_3 d2020_11_30;
    DECIMAL8_3 d2020_12_01;
    DECIMAL8_3 d2020_12_02;
    DECIMAL8_3 d2020_12_03;
    DECIMAL8_3 d2020_12_04;
    DECIMAL8_3 d2020_12_05;
    DECIMAL8_3 d2020_12_06;
    DECIMAL8_3 d2020_12_07;
    DECIMAL8_3 d2020_12_08;
    DECIMAL8_3 d2020_12_09;
    DECIMAL8_3 d2020_12_10;
    DECIMAL8_3 d2020_12_11;
    DECIMAL8_3 d2020_12_12;
    DECIMAL8_3 d2020_12_13;
    DECIMAL8_3 d2020_12_14;
    DECIMAL8_3 d2020_12_15;
    DECIMAL8_3 d2020_12_16;
    DECIMAL8_3 d2020_12_17;
    DECIMAL8_3 d2020_12_18;
    DECIMAL8_3 d2020_12_19;
    DECIMAL8_3 d2020_12_20;
    DECIMAL8_3 d2020_12_21;
    DECIMAL8_3 d2020_12_22;
    DECIMAL8_3 d2020_12_23;
    DECIMAL8_3 d2020_12_24;
    DECIMAL8_3 d2020_12_25;
    DECIMAL8_3 d2020_12_26;
    DECIMAL8_3 d2020_12_27;
    DECIMAL8_3 d2020_12_28;
    DECIMAL8_3 d2020_12_29;
    DECIMAL8_3 d2020_12_30;
    DECIMAL8_3 d2020_12_31;
    DECIMAL8_3 d2021_01_01;
    DECIMAL8_3 d2021_01_02;
    DECIMAL8_3 d2021_01_03;
    DECIMAL8_3 d2021_01_04;
    DECIMAL8_3 d2021_01_05;
    DECIMAL8_3 d2021_01_06;
    DECIMAL8_3 d2021_01_07;
    DECIMAL8_3 d2021_01_08;
    DECIMAL8_3 d2021_01_09;
    DECIMAL8_3 d2021_01_10;
    DECIMAL8_3 d2021_01_11;
    DECIMAL8_3 d2021_01_12;
    DECIMAL8_3 d2021_01_13;
    DECIMAL8_3 d2021_01_14;
    DECIMAL8_3 d2021_01_15;
    DECIMAL8_3 d2021_01_16;
    DECIMAL8_3 d2021_01_17;
    DECIMAL8_3 d2021_01_18;
    DECIMAL8_3 d2021_01_19;
    DECIMAL8_3 d2021_01_20;
    DECIMAL8_3 d2021_01_21;
    DECIMAL8_3 d2021_01_22;
    DECIMAL8_3 d2021_01_23;
    DECIMAL8_3 d2021_01_24;
    DECIMAL8_3 d2021_01_25;
    DECIMAL8_3 d2021_01_26;
    DECIMAL8_3 d2021_01_27;
END;

EXPORT ds := DATASET(filepath, layout, Flat);

END;