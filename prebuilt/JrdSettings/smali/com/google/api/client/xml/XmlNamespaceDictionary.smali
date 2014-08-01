.class public final Lcom/google/api/client/xml/XmlNamespaceDictionary;
.super Ljava/lang/Object;
.source "XmlNamespaceDictionary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;
    }
.end annotation


# instance fields
.field private final namespaceAliasToUriMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final namespaceUriToAliasMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary;->namespaceAliasToUriMap:Ljava/util/HashMap;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary;->namespaceUriToAliasMap:Ljava/util/HashMap;

    .line 316
    return-void
.end method

.method private computeAliases(Ljava/lang/Object;Ljava/util/SortedSet;)V
    .locals 12
    .parameter "element"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 247
    .local p2, aliases:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/google/api/client/util/Data;->mapOf(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 248
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 249
    .local v8, value:Ljava/lang/Object;
    if-eqz v8, :cond_0

    .line 250
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 251
    .local v6, name:Ljava/lang/String;
    const-string v10, "text()"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 252
    const/16 v10, 0x3a

    invoke-virtual {v6, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 253
    .local v1, colon:I
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x40

    if-ne v10, v11, :cond_4

    const/4 v5, 0x1

    .line 254
    .local v5, isAttribute:Z
    :goto_1
    const/4 v10, -0x1

    if-ne v1, v10, :cond_1

    if-nez v5, :cond_2

    .line 255
    :cond_1
    const/4 v10, -0x1

    if-ne v1, v10, :cond_5

    const-string v0, ""

    .line 256
    .local v0, alias:Ljava/lang/String;
    :goto_2
    invoke-interface {p2, v0}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 258
    .end local v0           #alias:Ljava/lang/String;
    :cond_2
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    .line 259
    .local v9, valueClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez v5, :cond_0

    invoke-static {v9}, Lcom/google/api/client/util/Data;->isPrimitive(Ljava/lang/reflect/Type;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 260
    instance-of v10, v8, Ljava/lang/Iterable;

    if-nez v10, :cond_3

    invoke-virtual {v9}, Ljava/lang/Class;->isArray()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 261
    :cond_3
    invoke-static {v8}, Lcom/google/api/client/util/Types;->iterableOf(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 262
    .local v7, subValue:Ljava/lang/Object;
    invoke-direct {p0, v7, p2}, Lcom/google/api/client/xml/XmlNamespaceDictionary;->computeAliases(Ljava/lang/Object;Ljava/util/SortedSet;)V

    goto :goto_3

    .line 253
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #isAttribute:Z
    .end local v7           #subValue:Ljava/lang/Object;
    .end local v9           #valueClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    .line 255
    .restart local v5       #isAttribute:Z
    :cond_5
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x40

    if-ne v10, v11, :cond_6

    const/4 v10, 0x1

    :goto_4
    invoke-virtual {v6, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    const/4 v10, 0x0

    goto :goto_4

    .line 265
    .restart local v9       #valueClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_7
    invoke-direct {p0, v8, p2}, Lcom/google/api/client/xml/XmlNamespaceDictionary;->computeAliases(Ljava/lang/Object;Ljava/util/SortedSet;)V

    goto :goto_0

    .line 271
    .end local v1           #colon:I
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5           #isAttribute:Z
    .end local v6           #name:Ljava/lang/String;
    .end local v8           #value:Ljava/lang/Object;
    .end local v9           #valueClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_8
    return-void
.end method

.method private serialize(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 3
    .parameter "serializer"
    .parameter "elementName"
    .parameter "element"
    .parameter "errorOnUnknown"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    const-string v1, ""

    .line 220
    .local v1, elementAlias:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 221
    const/16 v2, 0x3a

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 222
    .local v0, colon:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 223
    const/4 v2, 0x0

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 226
    .end local v0           #colon:I
    :cond_0
    invoke-direct {p0, p1, p3, p4, v1}, Lcom/google/api/client/xml/XmlNamespaceDictionary;->startDoc(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Object;ZLjava/lang/String;)Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->serialize(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 227
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 228
    return-void
.end method

.method private serialize(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 2
    .parameter "serializer"
    .parameter "elementNamespaceUri"
    .parameter "elementLocalName"
    .parameter "element"
    .parameter "errorOnUnknown"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 211
    .local v0, elementAlias:Ljava/lang/String;
    :goto_0
    invoke-direct {p0, p1, p4, p5, v0}, Lcom/google/api/client/xml/XmlNamespaceDictionary;->startDoc(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Object;ZLjava/lang/String;)Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->serialize(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 214
    return-void

    .line 210
    .end local v0           #elementAlias:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/api/client/xml/XmlNamespaceDictionary;->getAliasForUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private startDoc(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Object;ZLjava/lang/String;)Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;
    .locals 5
    .parameter "serializer"
    .parameter "element"
    .parameter "errorOnUnknown"
    .parameter "elementAlias"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 233
    invoke-interface {p1, v4, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 234
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 235
    .local v1, aliases:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Ljava/lang/String;>;"
    invoke-direct {p0, p2, v1}, Lcom/google/api/client/xml/XmlNamespaceDictionary;->computeAliases(Ljava/lang/Object;Ljava/util/SortedSet;)V

    .line 236
    if-eqz p4, :cond_0

    .line 237
    invoke-interface {v1, p4}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_0
    invoke-interface {v1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 240
    .local v0, alias:Ljava/lang/String;
    invoke-virtual {p0, p3, v0}, Lcom/google/api/client/xml/XmlNamespaceDictionary;->getNamespaceUriForAliasHandlingUnknown(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 241
    .local v3, uri:Ljava/lang/String;
    invoke-interface {p1, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 243
    .end local v0           #alias:Ljava/lang/String;
    .end local v3           #uri:Ljava/lang/String;
    :cond_1
    new-instance v4, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;

    invoke-direct {v4, p0, p2, p3}, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;-><init>(Lcom/google/api/client/xml/XmlNamespaceDictionary;Ljava/lang/Object;Z)V

    return-object v4
.end method

.method static toSerializedValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .parameter "value"

    .prologue
    .line 408
    instance-of v2, p0, Ljava/lang/Float;

    if-eqz v2, :cond_1

    move-object v1, p0

    .line 409
    check-cast v1, Ljava/lang/Float;

    .line 410
    .local v1, f:Ljava/lang/Float;
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x7f80

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 411
    const-string v2, "INF"

    .line 433
    .end local v1           #f:Ljava/lang/Float;
    .end local p0
    :goto_0
    return-object v2

    .line 413
    .restart local v1       #f:Ljava/lang/Float;
    .restart local p0
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, -0x80

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    .line 414
    const-string v2, "-INF"

    goto :goto_0

    .line 417
    .end local v1           #f:Ljava/lang/Float;
    :cond_1
    instance-of v2, p0, Ljava/lang/Double;

    if-eqz v2, :cond_3

    move-object v0, p0

    .line 418
    check-cast v0, Ljava/lang/Double;

    .line 419
    .local v0, d:Ljava/lang/Double;
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/high16 v4, 0x7ff0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    .line 420
    const-string v2, "INF"

    goto :goto_0

    .line 422
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/high16 v4, -0x10

    cmpl-double v2, v2, v4

    if-nez v2, :cond_3

    .line 423
    const-string v2, "-INF"

    goto :goto_0

    .line 426
    .end local v0           #d:Ljava/lang/Double;
    :cond_3
    instance-of v2, p0, Ljava/lang/String;

    if-nez v2, :cond_4

    instance-of v2, p0, Ljava/lang/Number;

    if-nez v2, :cond_4

    instance-of v2, p0, Ljava/lang/Boolean;

    if-eqz v2, :cond_5

    .line 427
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 429
    :cond_5
    instance-of v2, p0, Lcom/google/api/client/util/DateTime;

    if-eqz v2, :cond_6

    .line 430
    check-cast p0, Lcom/google/api/client/util/DateTime;

    .end local p0
    invoke-virtual {p0}, Lcom/google/api/client/util/DateTime;->toStringRfc3339()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 432
    .restart local p0
    :cond_6
    instance-of v2, p0, Ljava/lang/Enum;

    if-eqz v2, :cond_7

    .line 433
    check-cast p0, Ljava/lang/Enum;

    .end local p0
    invoke-static {p0}, Lcom/google/api/client/util/FieldInfo;->of(Ljava/lang/Enum;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/api/client/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 435
    .restart local p0
    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unrecognized value type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public declared-synchronized getAliasForUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "uri"

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary;->namespaceUriToAliasMap:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAliasToUriMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary;->namespaceAliasToUriMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getNamespaceAliasForUriErrorOnUnknown(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "namespaceUri"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 308
    invoke-virtual {p0, p1}, Lcom/google/api/client/xml/XmlNamespaceDictionary;->getAliasForUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, result:Ljava/lang/String;
    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    const-string v4, "invalid XML: no alias declared for namesapce <%s>; work-around by setting XML namepace directly by calling the set method of %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v3

    const-class v3, Lcom/google/api/client/xml/XmlNamespaceDictionary;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v1, v4, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 313
    return-object v0

    :cond_0
    move v1, v3

    .line 309
    goto :goto_0
.end method

.method getNamespaceUriForAliasHandlingUnknown(ZLjava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "errorOnUnknown"
    .parameter "alias"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 291
    invoke-virtual {p0, p2}, Lcom/google/api/client/xml/XmlNamespaceDictionary;->getUriForAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, result:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 293
    if-nez p1, :cond_1

    move v1, v2

    :goto_0
    const-string v4, "unrecognized alias: %s"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "(default)"

    :goto_1
    aput-object v2, v5, v3

    invoke-static {v1, v4, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://unknown/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 297
    .end local v0           #result:Ljava/lang/String;
    :cond_0
    return-object v0

    .restart local v0       #result:Ljava/lang/String;
    :cond_1
    move v1, v3

    .line 293
    goto :goto_0

    :cond_2
    move-object v2, p2

    goto :goto_1
.end method

.method public declared-synchronized getUriForAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "alias"

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary;->namespaceAliasToUriMap:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUriToAliasMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary;->namespaceUriToAliasMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public serialize(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "serializer"
    .parameter "elementName"
    .parameter "element"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/api/client/xml/XmlNamespaceDictionary;->serialize(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 206
    return-void
.end method

.method public serialize(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .parameter "serializer"
    .parameter "elementNamespaceUri"
    .parameter "elementLocalName"
    .parameter "element"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/api/client/xml/XmlNamespaceDictionary;->serialize(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 193
    return-void
.end method

.method public declared-synchronized set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/xml/XmlNamespaceDictionary;
    .locals 6
    .parameter "alias"
    .parameter "uri"

    .prologue
    .line 134
    monitor-enter p0

    const/4 v2, 0x0

    .line 135
    .local v2, previousUri:Ljava/lang/String;
    const/4 v1, 0x0

    .line 136
    .local v1, previousAlias:Ljava/lang/String;
    if-nez p2, :cond_3

    .line 137
    if-eqz p1, :cond_0

    .line 138
    :try_start_0
    iget-object v3, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary;->namespaceAliasToUriMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 151
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 152
    iget-object v3, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary;->namespaceUriToAliasMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_1
    if-eqz v1, :cond_2

    .line 155
    iget-object v3, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary;->namespaceAliasToUriMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    :cond_2
    monitor-exit p0

    return-object p0

    .line 140
    :cond_3
    if-nez p1, :cond_4

    .line 141
    :try_start_1
    iget-object v3, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary;->namespaceUriToAliasMap:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    goto :goto_0

    .line 143
    :cond_4
    iget-object v3, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary;->namespaceAliasToUriMap:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 145
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 146
    iget-object v3, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary;->namespaceUriToAliasMap:Ljava/util/HashMap;

    invoke-virtual {v3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 148
    :cond_5
    const/4 v2, 0x0

    goto :goto_0

    .line 134
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public toStringOf(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .parameter "elementName"
    .parameter "element"

    .prologue
    .line 170
    :try_start_0
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 171
    .local v2, writer:Ljava/io/StringWriter;
    invoke-static {}, Lcom/google/api/client/xml/Xml;->createSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    .line 172
    .local v1, serializer:Lorg/xmlpull/v1/XmlSerializer;
    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 173
    const/4 v3, 0x0

    invoke-direct {p0, v1, p1, p2, v3}, Lcom/google/api/client/xml/XmlNamespaceDictionary;->serialize(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 174
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 175
    .end local v1           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .end local v2           #writer:Ljava/io/StringWriter;
    :catch_0
    move-exception v0

    .line 176
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
