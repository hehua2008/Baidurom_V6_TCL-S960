.class public Lorg/apache/commons/collections/SequencedHashMap;
.super Ljava/lang/Object;
.source "SequencedHashMap.java"

# interfaces
.implements Ljava/io/Externalizable;
.implements Ljava/lang/Cloneable;
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/SequencedHashMap$OrderedIterator;,
        Lorg/apache/commons/collections/SequencedHashMap$Entry;
    }
.end annotation


# static fields
.field private static final ENTRY:I = 0x2

.field private static final KEY:I = 0x0

.field private static final REMOVED_MASK:I = -0x80000000

.field private static final VALUE:I = 0x1

.field private static final serialVersionUID:J = 0x2eea2293a9222612L


# instance fields
.field private entries:Ljava/util/HashMap;

.field private transient modCount:J

.field private sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->modCount:J

    .line 168
    invoke-static {}, Lorg/apache/commons/collections/SequencedHashMap;->createSentinel()Lorg/apache/commons/collections/SequencedHashMap$Entry;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    .line 169
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->entries:Ljava/util/HashMap;

    .line 170
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "initialSize"

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->modCount:J

    .line 181
    invoke-static {}, Lorg/apache/commons/collections/SequencedHashMap;->createSentinel()Lorg/apache/commons/collections/SequencedHashMap$Entry;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    .line 182
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->entries:Ljava/util/HashMap;

    .line 183
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 2
    .parameter "initialSize"
    .parameter "loadFactor"

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->modCount:J

    .line 196
    invoke-static {}, Lorg/apache/commons/collections/SequencedHashMap;->createSentinel()Lorg/apache/commons/collections/SequencedHashMap$Entry;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    .line 197
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1, p2}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->entries:Ljava/util/HashMap;

    .line 198
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .parameter "m"

    .prologue
    .line 206
    invoke-direct {p0}, Lorg/apache/commons/collections/SequencedHashMap;-><init>()V

    .line 207
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/SequencedHashMap;->putAll(Ljava/util/Map;)V

    .line 208
    return-void
.end method

.method static access$000(Lorg/apache/commons/collections/SequencedHashMap;Ljava/lang/Object;)Lorg/apache/commons/collections/SequencedHashMap$Entry;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/SequencedHashMap;->removeImpl(Ljava/lang/Object;)Lorg/apache/commons/collections/SequencedHashMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method static access$100(Lorg/apache/commons/collections/SequencedHashMap;)Lorg/apache/commons/collections/SequencedHashMap$Entry;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    return-object v0
.end method

.method static access$200(Lorg/apache/commons/collections/SequencedHashMap;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->entries:Ljava/util/HashMap;

    return-object v0
.end method

.method static access$300(Lorg/apache/commons/collections/SequencedHashMap;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 61
    iget-wide v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->modCount:J

    return-wide v0
.end method

.method private static final createSentinel()Lorg/apache/commons/collections/SequencedHashMap$Entry;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 139
    new-instance v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;

    invoke-direct {v0, v1, v1}, Lorg/apache/commons/collections/SequencedHashMap$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 140
    .local v0, s:Lorg/apache/commons/collections/SequencedHashMap$Entry;
    iput-object v0, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->prev:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    .line 141
    iput-object v0, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    .line 142
    return-object v0
.end method

.method private getEntry(I)Ljava/util/Map$Entry;
    .locals 5
    .parameter "index"

    .prologue
    .line 858
    iget-object v1, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    .line 860
    .local v1, pos:Lorg/apache/commons/collections/SequencedHashMap$Entry;
    if-gez p1, :cond_0

    .line 861
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " < 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 865
    :cond_0
    const/4 v0, -0x1

    .line 866
    .local v0, i:I
    :goto_0
    add-int/lit8 v2, p1, -0x1

    if-ge v0, v2, :cond_1

    iget-object v2, v1, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v3, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    if-ne v2, v3, :cond_2

    .line 873
    :cond_1
    iget-object v2, v1, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v3, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    if-ne v2, v3, :cond_3

    .line 874
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " >= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 867
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 868
    iget-object v1, v1, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    goto :goto_0

    .line 877
    :cond_3
    iget-object v2, v1, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    return-object v2
.end method

.method private insertEntry(Lorg/apache/commons/collections/SequencedHashMap$Entry;)V
    .locals 1
    .parameter "entry"

    .prologue
    .line 224
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iput-object v0, p1, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    .line 225
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v0, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->prev:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iput-object v0, p1, Lorg/apache/commons/collections/SequencedHashMap$Entry;->prev:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    .line 226
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v0, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->prev:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iput-object p1, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    .line 227
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iput-object p1, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->prev:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    .line 228
    return-void
.end method

.method private removeEntry(Lorg/apache/commons/collections/SequencedHashMap$Entry;)V
    .locals 2
    .parameter "entry"

    .prologue
    .line 215
    iget-object v0, p1, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v1, p1, Lorg/apache/commons/collections/SequencedHashMap$Entry;->prev:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iput-object v1, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->prev:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    .line 216
    iget-object v0, p1, Lorg/apache/commons/collections/SequencedHashMap$Entry;->prev:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v1, p1, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iput-object v1, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    .line 217
    return-void
.end method

.method private removeImpl(Ljava/lang/Object;)Lorg/apache/commons/collections/SequencedHashMap$Entry;
    .locals 5
    .parameter "key"

    .prologue
    .line 469
    iget-object v1, p0, Lorg/apache/commons/collections/SequencedHashMap;->entries:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;

    .line 470
    .local v0, e:Lorg/apache/commons/collections/SequencedHashMap$Entry;
    if-nez v0, :cond_0

    .line 471
    const/4 v0, 0x0

    .line 474
    .end local v0           #e:Lorg/apache/commons/collections/SequencedHashMap$Entry;
    :goto_0
    return-object v0

    .line 472
    .restart local v0       #e:Lorg/apache/commons/collections/SequencedHashMap$Entry;
    :cond_0
    iget-wide v1, p0, Lorg/apache/commons/collections/SequencedHashMap;->modCount:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/collections/SequencedHashMap;->modCount:J

    .line 473
    invoke-direct {p0, v0}, Lorg/apache/commons/collections/SequencedHashMap;->removeEntry(Lorg/apache/commons/collections/SequencedHashMap$Entry;)V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    .line 499
    iget-wide v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->modCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->modCount:J

    .line 502
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->entries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 505
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v1, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iput-object v1, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    .line 506
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v1, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iput-object v1, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->prev:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    .line 507
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 828
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/SequencedHashMap;

    .line 831
    .local v0, map:Lorg/apache/commons/collections/SequencedHashMap;
    invoke-static {}, Lorg/apache/commons/collections/SequencedHashMap;->createSentinel()Lorg/apache/commons/collections/SequencedHashMap$Entry;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    .line 835
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lorg/apache/commons/collections/SequencedHashMap;->entries:Ljava/util/HashMap;

    .line 838
    invoke-virtual {v0, p0}, Lorg/apache/commons/collections/SequencedHashMap;->putAll(Ljava/util/Map;)V

    .line 848
    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 254
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->entries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 3
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    .line 269
    if-nez p1, :cond_3

    .line 270
    iget-object v2, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v0, v2, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    .local v0, pos:Lorg/apache/commons/collections/SequencedHashMap$Entry;
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    if-ne v0, v2, :cond_2

    .line 280
    :cond_0
    const/4 v1, 0x0

    :cond_1
    return v1

    .line 271
    :cond_2
    invoke-virtual {v0}, Lorg/apache/commons/collections/SequencedHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 270
    iget-object v0, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    goto :goto_0

    .line 275
    .end local v0           #pos:Lorg/apache/commons/collections/SequencedHashMap$Entry;
    :cond_3
    iget-object v2, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v0, v2, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    .restart local v0       #pos:Lorg/apache/commons/collections/SequencedHashMap$Entry;
    :goto_1
    iget-object v2, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    if-eq v0, v2, :cond_0

    .line 276
    invoke-virtual {v0}, Lorg/apache/commons/collections/SequencedHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 275
    iget-object v0, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    goto :goto_1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 638
    new-instance v0, Lorg/apache/commons/collections/SequencedHashMap$3;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/SequencedHashMap$3;-><init>(Lorg/apache/commons/collections/SequencedHashMap;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "obj"

    .prologue
    const/4 v0, 0x0

    .line 513
    if-nez p1, :cond_1

    .line 521
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 515
    .restart local p1
    :cond_1
    if-ne p1, p0, :cond_2

    .line 516
    const/4 v0, 0x1

    goto :goto_0

    .line 518
    :cond_2
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 521
    invoke-virtual {p0}, Lorg/apache/commons/collections/SequencedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast p1, Ljava/util/Map;

    .end local p1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"

    .prologue
    .line 889
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/SequencedHashMap;->getEntry(I)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "o"

    .prologue
    .line 288
    iget-object v1, p0, Lorg/apache/commons/collections/SequencedHashMap;->entries:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;

    .line 289
    .local v0, entry:Lorg/apache/commons/collections/SequencedHashMap$Entry;
    if-nez v0, :cond_0

    .line 290
    const/4 v1, 0x0

    .line 292
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/collections/SequencedHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getFirst()Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 309
    invoke-virtual {p0}, Lorg/apache/commons/collections/SequencedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v0, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    goto :goto_0
.end method

.method public getFirstKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v0, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    invoke-virtual {v0}, Lorg/apache/commons/collections/SequencedHashMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getFirstValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v0, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    invoke-virtual {v0}, Lorg/apache/commons/collections/SequencedHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getLast()Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 376
    invoke-virtual {p0}, Lorg/apache/commons/collections/SequencedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v0, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->prev:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    goto :goto_0
.end method

.method public getLastKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v0, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->prev:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    invoke-virtual {v0}, Lorg/apache/commons/collections/SequencedHashMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getLastValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v0, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->prev:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    invoke-virtual {v0}, Lorg/apache/commons/collections/SequencedHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"

    .prologue
    .line 901
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/SequencedHashMap;->getEntry(I)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 528
    invoke-virtual {p0}, Lorg/apache/commons/collections/SequencedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 4
    .parameter "key"

    .prologue
    .line 911
    iget-object v2, p0, Lorg/apache/commons/collections/SequencedHashMap;->entries:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;

    .line 912
    .local v0, e:Lorg/apache/commons/collections/SequencedHashMap$Entry;
    if-nez v0, :cond_1

    .line 913
    const/4 v1, -0x1

    .line 920
    :cond_0
    return v1

    .line 915
    :cond_1
    const/4 v1, 0x0

    .line 916
    .local v1, pos:I
    :goto_0
    iget-object v2, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->prev:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v3, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    if-eq v2, v3, :cond_0

    .line 917
    add-int/lit8 v1, v1, 0x1

    .line 918
    iget-object v0, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->prev:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v0, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v1, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 929
    invoke-virtual {p0}, Lorg/apache/commons/collections/SequencedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 558
    new-instance v0, Lorg/apache/commons/collections/SequencedHashMap$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/SequencedHashMap$1;-><init>(Lorg/apache/commons/collections/SequencedHashMap;)V

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .parameter "key"

    .prologue
    .line 940
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/SequencedHashMap;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter "key"
    .parameter "value"

    .prologue
    .line 423
    iget-wide v2, p0, Lorg/apache/commons/collections/SequencedHashMap;->modCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/collections/SequencedHashMap;->modCount:J

    .line 425
    const/4 v1, 0x0

    .line 428
    .local v1, oldValue:Ljava/lang/Object;
    iget-object v2, p0, Lorg/apache/commons/collections/SequencedHashMap;->entries:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;

    .line 431
    .local v0, e:Lorg/apache/commons/collections/SequencedHashMap$Entry;
    if-eqz v0, :cond_0

    .line 433
    invoke-direct {p0, v0}, Lorg/apache/commons/collections/SequencedHashMap;->removeEntry(Lorg/apache/commons/collections/SequencedHashMap$Entry;)V

    .line 436
    invoke-virtual {v0, p2}, Lorg/apache/commons/collections/SequencedHashMap$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 451
    .end local v1           #oldValue:Ljava/lang/Object;
    :goto_0
    invoke-direct {p0, v0}, Lorg/apache/commons/collections/SequencedHashMap;->insertEntry(Lorg/apache/commons/collections/SequencedHashMap$Entry;)V

    .line 453
    return-object v1

    .line 445
    .restart local v1       #oldValue:Ljava/lang/Object;
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;

    .end local v0           #e:Lorg/apache/commons/collections/SequencedHashMap$Entry;
    invoke-direct {v0, p1, p2}, Lorg/apache/commons/collections/SequencedHashMap$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 446
    .restart local v0       #e:Lorg/apache/commons/collections/SequencedHashMap$Entry;
    iget-object v2, p0, Lorg/apache/commons/collections/SequencedHashMap;->entries:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 4
    .parameter "t"

    .prologue
    .line 488
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 489
    .local v1, iter:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 493
    return-void

    .line 490
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 491
    .local v0, entry:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/collections/SequencedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 991
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v2

    .line 992
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 997
    return-void

    .line 993
    :cond_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 994
    .local v1, key:Ljava/lang/Object;
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 995
    .local v3, value:Ljava/lang/Object;
    invoke-virtual {p0, v1, v3}, Lorg/apache/commons/collections/SequencedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"

    .prologue
    .line 978
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/SequencedHashMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/SequencedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "key"

    .prologue
    .line 460
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/SequencedHashMap;->removeImpl(Ljava/lang/Object;)Lorg/apache/commons/collections/SequencedHashMap$Entry;

    move-result-object v0

    .line 461
    .local v0, e:Lorg/apache/commons/collections/SequencedHashMap$Entry;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/collections/SequencedHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public sequence()Ljava/util/List;
    .locals 3

    .prologue
    .line 958
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/apache/commons/collections/SequencedHashMap;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 959
    .local v1, l:Ljava/util/List;
    invoke-virtual {p0}, Lorg/apache/commons/collections/SequencedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 960
    .local v0, iter:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 964
    invoke-static {v1}, Lorg/apache/commons/collections/list/UnmodifiableList;->decorate(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 961
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap;->entries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 539
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 540
    .local v0, buf:Ljava/lang/StringBuffer;
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 541
    iget-object v2, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v1, v2, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    .local v1, pos:Lorg/apache/commons/collections/SequencedHashMap$Entry;
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    if-ne v1, v2, :cond_0

    .line 549
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 551
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 542
    :cond_0
    invoke-virtual {v1}, Lorg/apache/commons/collections/SequencedHashMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 543
    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 544
    invoke-virtual {v1}, Lorg/apache/commons/collections/SequencedHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 545
    iget-object v2, v1, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v3, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    if-eq v2, v3, :cond_1

    .line 546
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 541
    :cond_1
    iget-object v1, v1, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    goto :goto_0
.end method

.method public values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 590
    new-instance v0, Lorg/apache/commons/collections/SequencedHashMap$2;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/SequencedHashMap$2;-><init>(Lorg/apache/commons/collections/SequencedHashMap;)V

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1006
    invoke-virtual {p0}, Lorg/apache/commons/collections/SequencedHashMap;->size()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 1007
    iget-object v1, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    iget-object v0, v1, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    .local v0, pos:Lorg/apache/commons/collections/SequencedHashMap$Entry;
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/collections/SequencedHashMap;->sentinel:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    if-ne v0, v1, :cond_0

    .line 1011
    return-void

    .line 1008
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/collections/SequencedHashMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 1009
    invoke-virtual {v0}, Lorg/apache/commons/collections/SequencedHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 1007
    iget-object v0, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    goto :goto_0
.end method
