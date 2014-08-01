.class public Lorg/apache/commons/collections/keyvalue/MultiKey;
.super Ljava/lang/Object;
.source "MultiKey.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3df875d977c7e505L


# instance fields
.field private final hashCode:I

.field private final keys:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .parameter "key1"
    .parameter "key2"

    .prologue
    const/4 v2, 0x0

    .line 68
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-direct {p0, v0, v2}, Lorg/apache/commons/collections/keyvalue/MultiKey;-><init>([Ljava/lang/Object;Z)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .parameter "key1"
    .parameter "key2"
    .parameter "key3"

    .prologue
    const/4 v2, 0x0

    .line 82
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-direct {p0, v0, v2}, Lorg/apache/commons/collections/keyvalue/MultiKey;-><init>([Ljava/lang/Object;Z)V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .parameter "key1"
    .parameter "key2"
    .parameter "key3"
    .parameter "key4"

    .prologue
    const/4 v2, 0x0

    .line 97
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    invoke-direct {p0, v0, v2}, Lorg/apache/commons/collections/keyvalue/MultiKey;-><init>([Ljava/lang/Object;Z)V

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .parameter "key1"
    .parameter "key2"
    .parameter "key3"
    .parameter "key4"
    .parameter "key5"

    .prologue
    const/4 v2, 0x0

    .line 113
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    aput-object p5, v0, v1

    invoke-direct {p0, v0, v2}, Lorg/apache/commons/collections/keyvalue/MultiKey;-><init>([Ljava/lang/Object;Z)V

    .line 114
    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 1
    .parameter "keys"

    .prologue
    .line 128
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/keyvalue/MultiKey;-><init>([Ljava/lang/Object;Z)V

    .line 129
    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;Z)V
    .locals 4
    .parameter "keys"
    .parameter "makeClone"

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    if-nez p1, :cond_0

    .line 158
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The array of keys must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 160
    :cond_0
    if-eqz p2, :cond_1

    .line 161
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    iput-object v2, p0, Lorg/apache/commons/collections/keyvalue/MultiKey;->keys:[Ljava/lang/Object;

    .line 166
    :goto_0
    const/4 v1, 0x0

    .line 167
    .local v1, total:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p1

    if-lt v0, v2, :cond_2

    .line 172
    iput v1, p0, Lorg/apache/commons/collections/keyvalue/MultiKey;->hashCode:I

    .line 173
    return-void

    .line 163
    .end local v0           #i:I
    .end local v1           #total:I
    :cond_1
    iput-object p1, p0, Lorg/apache/commons/collections/keyvalue/MultiKey;->keys:[Ljava/lang/Object;

    goto :goto_0

    .line 168
    .restart local v0       #i:I
    .restart local v1       #total:I
    :cond_2
    aget-object v2, p1, v0

    if-eqz v2, :cond_3

    .line 169
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    .line 167
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "other"

    .prologue
    .line 224
    if-ne p1, p0, :cond_0

    .line 225
    const/4 v1, 0x1

    .line 231
    :goto_0
    return v1

    .line 227
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/collections/keyvalue/MultiKey;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 228
    check-cast v0, Lorg/apache/commons/collections/keyvalue/MultiKey;

    .line 229
    .local v0, otherMulti:Lorg/apache/commons/collections/keyvalue/MultiKey;
    iget-object v1, p0, Lorg/apache/commons/collections/keyvalue/MultiKey;->keys:[Ljava/lang/Object;

    iget-object v2, v0, Lorg/apache/commons/collections/keyvalue/MultiKey;->keys:[Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 231
    .end local v0           #otherMulti:Lorg/apache/commons/collections/keyvalue/MultiKey;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getKey(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"

    .prologue
    .line 200
    iget-object v0, p0, Lorg/apache/commons/collections/keyvalue/MultiKey;->keys:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getKeys()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lorg/apache/commons/collections/keyvalue/MultiKey;->keys:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lorg/apache/commons/collections/keyvalue/MultiKey;->hashCode:I

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lorg/apache/commons/collections/keyvalue/MultiKey;->keys:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 254
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "MultiKey"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections/keyvalue/MultiKey;->keys:[Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
