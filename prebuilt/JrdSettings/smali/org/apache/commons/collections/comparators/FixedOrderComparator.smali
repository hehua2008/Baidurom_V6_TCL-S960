.class public Lorg/apache/commons/collections/comparators/FixedOrderComparator;
.super Ljava/lang/Object;
.source "FixedOrderComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final UNKNOWN_AFTER:I = 0x1

.field public static final UNKNOWN_BEFORE:I = 0x0

.field public static final UNKNOWN_THROW_EXCEPTION:I = 0x2


# instance fields
.field private counter:I

.field private isLocked:Z

.field private final map:Ljava/util/Map;

.field private unknownObjectBehavior:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->map:Ljava/util/Map;

    .line 74
    iput v1, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->counter:I

    .line 76
    iput-boolean v1, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->isLocked:Z

    .line 78
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->unknownObjectBehavior:I

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .parameter "items"

    .prologue
    const/4 v2, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->map:Ljava/util/Map;

    .line 74
    iput v2, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->counter:I

    .line 76
    iput-boolean v2, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->isLocked:Z

    .line 78
    const/4 v1, 0x2

    iput v1, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->unknownObjectBehavior:I

    .line 119
    if-nez p1, :cond_0

    .line 120
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The list of items must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 122
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 125
    return-void

    .line 123
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 3
    .parameter "items"

    .prologue
    const/4 v2, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->map:Ljava/util/Map;

    .line 74
    iput v2, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->counter:I

    .line 76
    iput-boolean v2, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->isLocked:Z

    .line 78
    const/4 v1, 0x2

    iput v1, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->unknownObjectBehavior:I

    .line 100
    if-nez p1, :cond_0

    .line 101
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The list of items must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 103
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_1

    .line 106
    return-void

    .line 104
    :cond_1
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->add(Ljava/lang/Object;)Z

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    .line 192
    invoke-virtual {p0}, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->checkLocked()V

    .line 193
    iget-object v1, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->map:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->counter:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->counter:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 194
    .local v0, position:Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addAsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .parameter "existingObj"
    .parameter "newObj"

    .prologue
    .line 211
    invoke-virtual {p0}, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->checkLocked()V

    .line 212
    iget-object v2, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->map:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 213
    .local v0, position:Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 214
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " not known to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 216
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->map:Ljava/util/Map;

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 217
    .local v1, result:Ljava/lang/Object;
    if-nez v1, :cond_1

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected checkLocked()V
    .locals 2

    .prologue
    .line 146
    invoke-virtual {p0}, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot modify a FixedOrderComparator after a comparison"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_0
    return-void
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7
    .parameter "obj1"
    .parameter "obj2"

    .prologue
    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    .line 237
    iput-boolean v5, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->isLocked:Z

    .line 238
    iget-object v6, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->map:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 239
    .local v0, position1:Ljava/lang/Integer;
    iget-object v6, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->map:Ljava/util/Map;

    invoke-interface {v6, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 240
    .local v1, position2:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    if-nez v1, :cond_6

    .line 241
    :cond_0
    iget v6, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->unknownObjectBehavior:I

    packed-switch v6, :pswitch_data_0

    .line 258
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Unknown unknownObjectBehavior: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget v5, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->unknownObjectBehavior:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 243
    :pswitch_0
    if-nez v0, :cond_3

    .line 244
    if-nez v1, :cond_2

    .line 261
    :cond_1
    :goto_0
    return v3

    :cond_2
    move v3, v4

    .line 244
    goto :goto_0

    :cond_3
    move v3, v5

    .line 246
    goto :goto_0

    .line 249
    :pswitch_1
    if-nez v0, :cond_4

    .line 250
    if-eqz v1, :cond_1

    move v3, v5

    goto :goto_0

    :cond_4
    move v3, v4

    .line 252
    goto :goto_0

    .line 255
    :pswitch_2
    if-nez v0, :cond_5

    move-object v2, p1

    .line 256
    .local v2, unknownObj:Ljava/lang/Object;
    :goto_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Attempting to compare unknown object "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v2           #unknownObj:Ljava/lang/Object;
    :cond_5
    move-object v2, p2

    .line 255
    goto :goto_1

    .line 261
    :cond_6
    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v3

    goto :goto_0

    .line 241
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getUnknownObjectBehavior()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->unknownObjectBehavior:I

    return v0
.end method

.method public isLocked()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->isLocked:Z

    return v0
.end method

.method public setUnknownObjectBehavior(I)V
    .locals 2
    .parameter "unknownObjectBehavior"

    .prologue
    .line 170
    invoke-virtual {p0}, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->checkLocked()V

    .line 171
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 174
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unrecognised value for unknown behaviour flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_0
    iput p1, p0, Lorg/apache/commons/collections/comparators/FixedOrderComparator;->unknownObjectBehavior:I

    .line 177
    return-void
.end method
