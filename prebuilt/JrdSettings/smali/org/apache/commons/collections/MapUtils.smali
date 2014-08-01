.class public Lorg/apache/commons/collections/MapUtils;
.super Ljava/lang/Object;
.source "MapUtils.java"


# static fields
.field public static final EMPTY_MAP:Ljava/util/Map; = null

.field public static final EMPTY_SORTED_MAP:Ljava/util/SortedMap; = null

.field private static final INDENT_STRING:Ljava/lang/String; = "    "


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 89
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v0}, Lorg/apache/commons/collections/map/UnmodifiableMap;->decorate(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections/MapUtils;->EMPTY_MAP:Ljava/util/Map;

    .line 94
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-static {v0}, Lorg/apache/commons/collections/map/UnmodifiableSortedMap;->decorate(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections/MapUtils;->EMPTY_SORTED_MAP:Ljava/util/SortedMap;

    .line 89
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    return-void
.end method

.method public static debugPrint(Ljava/io/PrintStream;Ljava/lang/Object;Ljava/util/Map;)V
    .locals 2
    .parameter "out"
    .parameter "label"
    .parameter "map"

    .prologue
    .line 931
    new-instance v0, Lorg/apache/commons/collections/ArrayStack;

    invoke-direct {v0}, Lorg/apache/commons/collections/ArrayStack;-><init>()V

    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v0, v1}, Lorg/apache/commons/collections/MapUtils;->verbosePrintInternal(Ljava/io/PrintStream;Ljava/lang/Object;Ljava/util/Map;Lorg/apache/commons/collections/ArrayStack;Z)V

    .line 932
    return-void
.end method

.method public static fixedSizeMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .parameter "map"

    .prologue
    .line 1202
    invoke-static {p0}, Lorg/apache/commons/collections/map/FixedSizeMap;->decorate(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static fixedSizeSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;
    .locals 1
    .parameter "map"

    .prologue
    .line 1394
    invoke-static {p0}, Lorg/apache/commons/collections/map/FixedSizeSortedMap;->decorate(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static getBoolean(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 3
    .parameter "map"
    .parameter "key"

    .prologue
    .line 156
    if-eqz p0, :cond_3

    .line 157
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 158
    .local v0, answer:Ljava/lang/Object;
    if-eqz v0, :cond_3

    .line 159
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 160
    check-cast v0, Ljava/lang/Boolean;

    .line 171
    .end local v0           #answer:Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 162
    .restart local v0       #answer:Ljava/lang/Object;
    :cond_0
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 163
    new-instance v2, Ljava/lang/Boolean;

    check-cast v0, Ljava/lang/String;

    .end local v0           #answer:Ljava/lang/Object;
    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0

    .line 165
    .restart local v0       #answer:Ljava/lang/Object;
    :cond_1
    instance-of v2, v0, Ljava/lang/Number;

    if-eqz v2, :cond_3

    move-object v1, v0

    .line 166
    check-cast v1, Ljava/lang/Number;

    .line 167
    .local v1, n:Ljava/lang/Number;
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_1
    move-object v0, v2

    goto :goto_0

    :cond_2
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .line 171
    .end local v0           #answer:Ljava/lang/Object;
    .end local v1           #n:Ljava/lang/Number;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getBoolean(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1
    .parameter "map"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 397
    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getBoolean(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    .line 398
    .local v0, answer:Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 399
    move-object v0, p2

    .line 401
    :cond_0
    return-object v0
.end method

.method public static getBooleanValue(Ljava/util/Map;Ljava/lang/Object;)Z
    .locals 2
    .parameter "map"
    .parameter "key"

    .prologue
    .line 582
    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getBoolean(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    .line 583
    .local v0, booleanObject:Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 584
    const/4 v1, 0x0

    .line 586
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method public static getBooleanValue(Ljava/util/Map;Ljava/lang/Object;Z)Z
    .locals 1
    .parameter "map"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 711
    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getBoolean(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    .line 712
    .local v0, booleanObject:Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 715
    .end local p2
    :goto_0
    return p2

    .restart local p2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0
.end method

.method public static getByte(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Byte;
    .locals 3
    .parameter "map"
    .parameter "key"

    .prologue
    .line 218
    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getNumber(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v0

    .line 219
    .local v0, answer:Ljava/lang/Number;
    if-nez v0, :cond_0

    .line 220
    const/4 v0, 0x0

    .line 224
    .end local v0           #answer:Ljava/lang/Number;
    :goto_0
    return-object v0

    .line 221
    .restart local v0       #answer:Ljava/lang/Number;
    :cond_0
    instance-of v1, v0, Ljava/lang/Byte;

    if-eqz v1, :cond_1

    .line 222
    check-cast v0, Ljava/lang/Byte;

    goto :goto_0

    .line 224
    :cond_1
    new-instance v1, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Byte;-><init>(B)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static getByte(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Byte;)Ljava/lang/Byte;
    .locals 1
    .parameter "map"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 437
    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getByte(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object v0

    .line 438
    .local v0, answer:Ljava/lang/Byte;
    if-nez v0, :cond_0

    .line 439
    move-object v0, p2

    .line 441
    :cond_0
    return-object v0
.end method

.method public static getByteValue(Ljava/util/Map;Ljava/lang/Object;)B
    .locals 2
    .parameter "map"
    .parameter "key"

    .prologue
    .line 599
    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getByte(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object v0

    .line 600
    .local v0, byteObject:Ljava/lang/Byte;
    if-nez v0, :cond_0

    .line 601
    const/4 v1, 0x0

    .line 603
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    goto :goto_0
.end method

.method public static getByteValue(Ljava/util/Map;Ljava/lang/Object;B)B
    .locals 1
    .parameter "map"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 731
    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getByte(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object v0

    .line 732
    .local v0, byteObject:Ljava/lang/Byte;
    if-nez v0, :cond_0

    .line 735
    .end local p2
    :goto_0
    return p2

    .restart local p2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result p2

    goto :goto_0
.end method

.method public static getDouble(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Double;
    .locals 4
    .parameter "map"
    .parameter "key"

    .prologue
    .line 313
    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getNumber(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v0

    .line 314
    .local v0, answer:Ljava/lang/Number;
    if-nez v0, :cond_0

    .line 315
    const/4 v0, 0x0

    .line 319
    .end local v0           #answer:Ljava/lang/Number;
    :goto_0
    return-object v0

    .line 316
    .restart local v0       #answer:Ljava/lang/Number;
    :cond_0
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_1

    .line 317
    check-cast v0, Ljava/lang/Double;

    goto :goto_0

    .line 319
    :cond_1
    new-instance v1, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static getDouble(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 1
    .parameter "map"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 537
    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getDouble(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v0

    .line 538
    .local v0, answer:Ljava/lang/Double;
    if-nez v0, :cond_0

    .line 539
    move-object v0, p2

    .line 541
    :cond_0
    return-object v0
.end method

.method public static getDoubleValue(Ljava/util/Map;Ljava/lang/Object;)D
    .locals 3
    .parameter "map"
    .parameter "key"

    .prologue
    .line 684
    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getDouble(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v0

    .line 685
    .local v0, doubleObject:Ljava/lang/Double;
    if-nez v0, :cond_0

    .line 686
    const-wide/16 v1, 0x0

    .line 688
    :goto_0
    return-wide v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    goto :goto_0
.end method

.method public static getDoubleValue(Ljava/util/Map;Ljava/lang/Object;D)D
    .locals 1
    .parameter "map"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 831
    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getDouble(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v0

    .line 832
    .local v0, doubleObject:Ljava/lang/Double;
    if-nez v0, :cond_0

    .line 835
    .end local p2
    :goto_0
    return-wide p2

    .restart local p2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    goto :goto_0
.end method

.method public static getFloat(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Float;
    .locals 3
    .parameter "map"
    .parameter "key"

    .prologue
    .line 294
    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getNumber(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v0

    .line 295
    .local v0, answer:Ljava/lang/Number;
    if-nez v0, :cond_0

    .line 296
    const/4 v0, 0x0

    .line 300
    .end local v0           #answer:Ljava/lang/Number;
    :goto_0
    return-object v0

    .line 297
    .restart local v0       #answer:Ljava/lang/Number;
    :cond_0
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_1

    .line 298
    check-cast v0, Ljava/lang/Float;

    goto :goto_0

    .line 300
    :cond_1
    new-instance v1, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Float;-><init>(F)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static getFloat(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 1
    .parameter "map"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 517
    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getFloat(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v0

    .line 518
    .local v0, answer:Ljava/lang/Float;
    if-nez v0, :cond_0

    .line 519
    move-object v0, p2

    .line 521
    :cond_0
    return-object v0
.end method

.method public static getFloatValue(Ljava/util/Map;Ljava/lang/Object;)F
    .locals 2
    .parameter "map"
    .parameter "key"

    .prologue
    .line 667
    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getFloat(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v0

    .line 668
    .local v0, floatObject:Ljava/lang/Float;
    if-nez v0, :cond_0

    .line 669
    const/4 v1, 0x0

    .line 671
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_0
.end method

.method public static getFloatValue(Ljava/util/Map;Ljava/lang/Object;F)F
    .locals 1
    .parameter "map"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 811
    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getFloat(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v0

    .line 812
    .local v0, floatObject:Ljava/lang/Float;
    if-nez v0, :cond_0

    .line 815
    .end local p2
    :goto_0
    return p2

    .restart local p2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p2

    goto :goto_0
.end method

.method public static getIntValue(Ljava/util/Map;Ljava/lang/Object;)I
    .locals 2
    .parameter "map"
    .parameter "key"

    .prologue
    .line 633
    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getInteger(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    .line 634
    .local v0, integerObject:Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 635
    const/4 v1, 0x0

    .line 637
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public static getIntValue(Ljava/util/Map;Ljava/lang/Object;I)I
    .locals 1
    .parameter "map"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 771
    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getInteger(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    .line 772
    .local v0, integerObject:Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 775
    .end local p2
    :goto_0
    return p2

    .restart local p2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0
.end method

.method public static getInteger(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 3
    .parameter "map"
    .parameter "key"

    .prologue
    .line 256
    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getNumber(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v0

    .line 257
    .local v0, answer:Ljava/lang/Number;
    if-nez v0, :cond_0

    .line 258
    const/4 v0, 0x0

    .line 262
    .end local v0           #answer:Ljava/lang/Number;
    :goto_0
    return-object v0

    .line 259
    .restart local v0       #answer:Ljava/lang/Number;
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 260
    check-cast v0, Ljava/lang/Integer;

    goto :goto_0

    .line 262
    :cond_1
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static getInteger(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1
    .parameter "map"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 477
    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getInteger(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    .line 478
    .local v0, answer:Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 479
    move-object v0, p2

    .line 481
    :cond_0
    return-object v0
.end method

.method public static getLong(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Long;
    .locals 4
    .parameter "map"
    .parameter "key"

    .prologue
    .line 275
    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getNumber(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v0

    .line 276
    .local v0, answer:Ljava/lang/Number;
    if-nez v0, :cond_0

    .line 277
    const/4 v0, 0x0

    .line 281
    .end local v0           #answer:Ljava/lang/Number;
    :goto_0
    return-object v0

    .line 278
    .restart local v0       #answer:Ljava/lang/Number;
    :cond_0
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 279
    check-cast v0, Ljava/lang/Long;

    goto :goto_0

    .line 281
    :cond_1
    new-instance v1, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static getLong(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 1
    .parameter "map"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 497
    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getLong(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    .line 498
    .local v0, answer:Ljava/lang/Long;
    if-nez v0, :cond_0

    .line 499
    move-object v0, p2

    .line 501
    :cond_0
    return-object v0
.end method

.method public static getLongValue(Ljava/util/Map;Ljava/lang/Object;)J
    .locals 3
    .parameter "map"
    .parameter "key"

    .prologue
    .line 650
    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getLong(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    .line 651
    .local v0, longObject:Ljava/lang/Long;
    if-nez v0, :cond_0

    .line 652
    const-wide/16 v1, 0x0

    .line 654
    :goto_0
    return-wide v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0
.end method

.method public static getLongValue(Ljava/util/Map;Ljava/lang/Object;J)J
    .locals 1
    .parameter "map"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 791
    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getLong(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    .line 792
    .local v0, longObject:Ljava/lang/Long;
    if-nez v0, :cond_0

    .line 795
    .end local p2
    :goto_0
    return-wide p2

    .restart local p2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    goto :goto_0
.end method

.method public static getMap(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;
    .locals 2
    .parameter "map"
    .parameter "key"

    .prologue
    .line 333
    if-eqz p0, :cond_0

    .line 334
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 335
    .local v0, answer:Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 336
    check-cast v0, Ljava/util/Map;

    .line 339
    .end local v0           #answer:Ljava/lang/Object;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMap(Ljava/util/Map;Ljava/lang/Object;Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .parameter "map"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 557
    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getMap(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 558
    .local v0, answer:Ljava/util/Map;
    if-nez v0, :cond_0

    .line 559
    move-object v0, p2

    .line 561
    :cond_0
    return-object v0
.end method

.method public static getNumber(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Number;
    .locals 5
    .parameter "map"
    .parameter "key"

    .prologue
    .line 188
    if-eqz p0, :cond_1

    .line 189
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 190
    .local v1, answer:Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 191
    instance-of v4, v1, Ljava/lang/Number;

    if-eqz v4, :cond_0

    .line 192
    check-cast v1, Ljava/lang/Number;

    .line 205
    .end local v1           #answer:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 194
    .restart local v1       #answer:Ljava/lang/Object;
    :cond_0
    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 196
    :try_start_0
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 197
    .local v3, text:Ljava/lang/String;
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 200
    .end local v3           #text:Ljava/lang/String;
    :catch_0
    move-exception v2

    .local v2, e:Ljava/text/ParseException;
    invoke-static {v2}, Lorg/apache/commons/collections/MapUtils;->logInfo(Ljava/lang/Exception;)V

    .line 205
    .end local v1           #answer:Ljava/lang/Object;
    .end local v2           #e:Ljava/text/ParseException;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getNumber(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 1
    .parameter "map"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 417
    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getNumber(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v0

    .line 418
    .local v0, answer:Ljava/lang/Number;
    if-nez v0, :cond_0

    .line 419
    move-object v0, p2

    .line 421
    :cond_0
    return-object v0
.end method

.method public static getObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "map"
    .parameter "key"

    .prologue
    .line 116
    if-eqz p0, :cond_0

    .line 117
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 119
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getObject(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "map"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 355
    if-eqz p0, :cond_0

    .line 356
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 357
    .local v0, answer:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 361
    .end local v0           #answer:Ljava/lang/Object;
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public static getShort(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Short;
    .locals 3
    .parameter "map"
    .parameter "key"

    .prologue
    .line 237
    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getNumber(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v0

    .line 238
    .local v0, answer:Ljava/lang/Number;
    if-nez v0, :cond_0

    .line 239
    const/4 v0, 0x0

    .line 243
    .end local v0           #answer:Ljava/lang/Number;
    :goto_0
    return-object v0

    .line 240
    .restart local v0       #answer:Ljava/lang/Number;
    :cond_0
    instance-of v1, v0, Ljava/lang/Short;

    if-eqz v1, :cond_1

    .line 241
    check-cast v0, Ljava/lang/Short;

    goto :goto_0

    .line 243
    :cond_1
    new-instance v1, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Short;-><init>(S)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static getShort(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Short;)Ljava/lang/Short;
    .locals 1
    .parameter "map"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 457
    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getShort(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object v0

    .line 458
    .local v0, answer:Ljava/lang/Short;
    if-nez v0, :cond_0

    .line 459
    move-object v0, p2

    .line 461
    :cond_0
    return-object v0
.end method

.method public static getShortValue(Ljava/util/Map;Ljava/lang/Object;)S
    .locals 2
    .parameter "map"
    .parameter "key"

    .prologue
    .line 616
    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getShort(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object v0

    .line 617
    .local v0, shortObject:Ljava/lang/Short;
    if-nez v0, :cond_0

    .line 618
    const/4 v1, 0x0

    .line 620
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v1

    goto :goto_0
.end method

.method public static getShortValue(Ljava/util/Map;Ljava/lang/Object;S)S
    .locals 1
    .parameter "map"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 751
    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getShort(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object v0

    .line 752
    .local v0, shortObject:Ljava/lang/Short;
    if-nez v0, :cond_0

    .line 755
    .end local p2
    :goto_0
    return p2

    .restart local p2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result p2

    goto :goto_0
.end method

.method public static getString(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "map"
    .parameter "key"

    .prologue
    .line 132
    if-eqz p0, :cond_0

    .line 133
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 134
    .local v0, answer:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 138
    .end local v0           #answer:Ljava/lang/Object;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getString(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "map"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 377
    invoke-static {p0, p1}, Lorg/apache/commons/collections/MapUtils;->getString(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 378
    .local v0, answer:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 379
    move-object v0, p2

    .line 381
    :cond_0
    return-object v0
.end method

.method public static invertMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .parameter "map"

    .prologue
    .line 1068
    new-instance v2, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 1069
    .local v2, out:Ljava/util/Map;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1073
    return-object v2

    .line 1070
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1071
    .local v0, entry:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static lazyMap(Ljava/util/Map;Lorg/apache/commons/collections/Factory;)Ljava/util/Map;
    .locals 1
    .parameter "map"
    .parameter "factory"

    .prologue
    .line 1234
    invoke-static {p0, p1}, Lorg/apache/commons/collections/map/LazyMap;->decorate(Ljava/util/Map;Lorg/apache/commons/collections/Factory;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static lazyMap(Ljava/util/Map;Lorg/apache/commons/collections/Transformer;)Ljava/util/Map;
    .locals 1
    .parameter "map"
    .parameter "transformerFactory"

    .prologue
    .line 1273
    invoke-static {p0, p1}, Lorg/apache/commons/collections/map/LazyMap;->decorate(Ljava/util/Map;Lorg/apache/commons/collections/Transformer;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static lazySortedMap(Ljava/util/SortedMap;Lorg/apache/commons/collections/Factory;)Ljava/util/SortedMap;
    .locals 1
    .parameter "map"
    .parameter "factory"

    .prologue
    .line 1427
    invoke-static {p0, p1}, Lorg/apache/commons/collections/map/LazySortedMap;->decorate(Ljava/util/SortedMap;Lorg/apache/commons/collections/Factory;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static lazySortedMap(Ljava/util/SortedMap;Lorg/apache/commons/collections/Transformer;)Ljava/util/SortedMap;
    .locals 1
    .parameter "map"
    .parameter "transformerFactory"

    .prologue
    .line 1466
    invoke-static {p0, p1}, Lorg/apache/commons/collections/map/LazySortedMap;->decorate(Ljava/util/SortedMap;Lorg/apache/commons/collections/Transformer;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method protected static logInfo(Ljava/lang/Exception;)V
    .locals 3
    .parameter "ex"

    .prologue
    .line 944
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "INFO: Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 945
    return-void
.end method

.method public static orderedMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .parameter "map"

    .prologue
    .line 1288
    invoke-static {p0}, Lorg/apache/commons/collections/map/ListOrderedMap;->decorate(Ljava/util/Map;)Lorg/apache/commons/collections/OrderedMap;

    move-result-object v0

    return-object v0
.end method

.method public static predicatedMap(Ljava/util/Map;Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Predicate;)Ljava/util/Map;
    .locals 1
    .parameter "map"
    .parameter "keyPred"
    .parameter "valuePred"

    .prologue
    .line 1156
    invoke-static {p0, p1, p2}, Lorg/apache/commons/collections/map/PredicatedMap;->decorate(Ljava/util/Map;Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Predicate;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static predicatedSortedMap(Ljava/util/SortedMap;Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Predicate;)Ljava/util/SortedMap;
    .locals 1
    .parameter "map"
    .parameter "keyPred"
    .parameter "valuePred"

    .prologue
    .line 1349
    invoke-static {p0, p1, p2}, Lorg/apache/commons/collections/map/PredicatedSortedMap;->decorate(Ljava/util/SortedMap;Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Predicate;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method private static printIndent(Ljava/io/PrintStream;I)V
    .locals 2
    .parameter "out"
    .parameter "indent"

    .prologue
    .line 1046
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 1049
    return-void

    .line 1047
    :cond_0
    const-string v1, "    "

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1046
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static safeAddToMap(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter "map"
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 1091
    if-nez p2, :cond_0

    .line 1092
    const-string v0, ""

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1096
    :goto_0
    return-void

    .line 1094
    :cond_0
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static synchronizedMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .parameter "map"

    .prologue
    .line 1124
    invoke-static {p0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static synchronizedSortedMap(Ljava/util/SortedMap;)Ljava/util/Map;
    .locals 1
    .parameter "map"

    .prologue
    .line 1317
    invoke-static {p0}, Ljava/util/Collections;->synchronizedSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static toMap(Ljava/util/ResourceBundle;)Ljava/util/Map;
    .locals 5
    .parameter "resourceBundle"

    .prologue
    .line 868
    invoke-virtual {p0}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object v0

    .line 869
    .local v0, enumeration:Ljava/util/Enumeration;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 871
    .local v2, map:Ljava/util/Map;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-nez v4, :cond_0

    .line 877
    return-object v2

    .line 872
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 873
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 874
    .local v3, value:Ljava/lang/Object;
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static toProperties(Ljava/util/Map;)Ljava/util/Properties;
    .locals 6
    .parameter "map"

    .prologue
    .line 848
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 849
    .local v0, answer:Ljava/util/Properties;
    if-eqz p0, :cond_0

    .line 850
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, iter:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 857
    .end local v2           #iter:Ljava/util/Iterator;
    :cond_0
    return-object v0

    .line 851
    .restart local v2       #iter:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 852
    .local v1, entry:Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 853
    .local v3, key:Ljava/lang/Object;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 854
    .local v4, value:Ljava/lang/Object;
    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static transformedMap(Ljava/util/Map;Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Transformer;)Ljava/util/Map;
    .locals 1
    .parameter "map"
    .parameter "keyTransformer"
    .parameter "valueTransformer"

    .prologue
    .line 1188
    invoke-static {p0, p1, p2}, Lorg/apache/commons/collections/map/TransformedMap;->decorate(Ljava/util/Map;Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Transformer;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static transformedSortedMap(Ljava/util/SortedMap;Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Transformer;)Ljava/util/SortedMap;
    .locals 1
    .parameter "map"
    .parameter "keyTransformer"
    .parameter "valueTransformer"

    .prologue
    .line 1380
    invoke-static {p0, p1, p2}, Lorg/apache/commons/collections/map/TransformedSortedMap;->decorate(Ljava/util/SortedMap;Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Transformer;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static typedMap(Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/Map;
    .locals 1
    .parameter "map"
    .parameter "keyType"
    .parameter "valueType"

    .prologue
    .line 1171
    invoke-static {p0, p1, p2}, Lorg/apache/commons/collections/map/TypedMap;->decorate(Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static typedSortedMap(Ljava/util/SortedMap;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/SortedMap;
    .locals 1
    .parameter "map"
    .parameter "keyType"
    .parameter "valueType"

    .prologue
    .line 1363
    invoke-static {p0, p1, p2}, Lorg/apache/commons/collections/map/TypedSortedMap;->decorate(Ljava/util/SortedMap;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .parameter "map"

    .prologue
    .line 1137
    invoke-static {p0}, Lorg/apache/commons/collections/map/UnmodifiableMap;->decorate(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/Map;
    .locals 1
    .parameter "map"

    .prologue
    .line 1330
    invoke-static {p0}, Lorg/apache/commons/collections/map/UnmodifiableSortedMap;->decorate(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static verbosePrint(Ljava/io/PrintStream;Ljava/lang/Object;Ljava/util/Map;)V
    .locals 2
    .parameter "out"
    .parameter "label"
    .parameter "map"

    .prologue
    .line 905
    new-instance v0, Lorg/apache/commons/collections/ArrayStack;

    invoke-direct {v0}, Lorg/apache/commons/collections/ArrayStack;-><init>()V

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lorg/apache/commons/collections/MapUtils;->verbosePrintInternal(Ljava/io/PrintStream;Ljava/lang/Object;Ljava/util/Map;Lorg/apache/commons/collections/ArrayStack;Z)V

    .line 906
    return-void
.end method

.method private static verbosePrintInternal(Ljava/io/PrintStream;Ljava/lang/Object;Ljava/util/Map;Lorg/apache/commons/collections/ArrayStack;Z)V
    .locals 7
    .parameter "out"
    .parameter "label"
    .parameter "map"
    .parameter "lineage"
    .parameter "debug"

    .prologue
    .line 977
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {p0, v5}, Lorg/apache/commons/collections/MapUtils;->printIndent(Ljava/io/PrintStream;I)V

    .line 979
    if-nez p2, :cond_1

    .line 980
    if-eqz p1, :cond_0

    .line 981
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 982
    const-string v5, " = "

    invoke-virtual {p0, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 984
    :cond_0
    const-string v5, "null"

    invoke-virtual {p0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1038
    :goto_0
    return-void

    .line 987
    :cond_1
    if-eqz p1, :cond_2

    .line 988
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 989
    const-string v5, " = "

    invoke-virtual {p0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 992
    :cond_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {p0, v5}, Lorg/apache/commons/collections/MapUtils;->printIndent(Ljava/io/PrintStream;I)V

    .line 993
    const-string v5, "{"

    invoke-virtual {p0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 995
    invoke-virtual {p3, p2}, Lorg/apache/commons/collections/ArrayStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, it:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1034
    invoke-virtual {p3}, Lorg/apache/commons/collections/ArrayStack;->pop()Ljava/lang/Object;

    .line 1036
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {p0, v5}, Lorg/apache/commons/collections/MapUtils;->printIndent(Ljava/io/PrintStream;I)V

    .line 1037
    if-eqz p4, :cond_9

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "} "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {p0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 998
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 999
    .local v2, entry:Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 1000
    .local v0, childKey:Ljava/lang/Object;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 1001
    .local v1, childValue:Ljava/lang/Object;
    instance-of v5, v1, Ljava/util/Map;

    if-eqz v5, :cond_5

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1002
    if-nez v0, :cond_4

    const-string v0, "null"

    .end local v0           #childKey:Ljava/lang/Object;
    :cond_4
    check-cast v1, Ljava/util/Map;

    .end local v1           #childValue:Ljava/lang/Object;
    invoke-static {p0, v0, v1, p3, p4}, Lorg/apache/commons/collections/MapUtils;->verbosePrintInternal(Ljava/io/PrintStream;Ljava/lang/Object;Ljava/util/Map;Lorg/apache/commons/collections/ArrayStack;Z)V

    goto :goto_1

    .line 1009
    .restart local v0       #childKey:Ljava/lang/Object;
    .restart local v1       #childValue:Ljava/lang/Object;
    :cond_5
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {p0, v5}, Lorg/apache/commons/collections/MapUtils;->printIndent(Ljava/io/PrintStream;I)V

    .line 1010
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 1011
    const-string v5, " = "

    invoke-virtual {p0, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1013
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 1014
    .local v4, lineageIndex:I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_6

    .line 1015
    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 1025
    :goto_3
    if-eqz p4, :cond_8

    if-eqz v1, :cond_8

    .line 1026
    const/16 v5, 0x20

    invoke-virtual {p0, v5}, Ljava/io/PrintStream;->print(C)V

    .line 1027
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 1016
    :cond_6
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v5, v4, :cond_7

    .line 1017
    const-string v5, "(this Map)"

    invoke-virtual {p0, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_3

    .line 1019
    :cond_7
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "(ancestor["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    sub-int/2addr v6, v4

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "] Map)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_3

    .line 1029
    :cond_8
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    goto/16 :goto_1

    .line 1037
    .end local v0           #childKey:Ljava/lang/Object;
    .end local v1           #childValue:Ljava/lang/Object;
    .end local v2           #entry:Ljava/util/Map$Entry;
    .end local v4           #lineageIndex:I
    :cond_9
    const-string v5, "}"

    goto/16 :goto_2
.end method
