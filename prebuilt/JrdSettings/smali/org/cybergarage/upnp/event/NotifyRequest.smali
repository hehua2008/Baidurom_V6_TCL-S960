.class public Lorg/cybergarage/upnp/event/NotifyRequest;
.super Lorg/cybergarage/soap/SOAPRequest;
.source "NotifyRequest.java"


# static fields
.field private static final PROPERTY:Ljava/lang/String; = "property"

.field private static final PROPERTYSET:Ljava/lang/String; = "propertyset"

.field private static final XMLNS:Ljava/lang/String; = "e"

.field public static lastEventTime:J

.field private static lock:Ljava/util/concurrent/locks/ReadWriteLock;

.field public static mCurrentMetaData:Ljava/lang/String;

.field public static mCurrentNumberOfTracks:Ljava/lang/String;

.field public static mCurrentTrackDuration:Ljava/lang/String;

.field public static mVarList:Ljava/util/HashMap;
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
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    const-wide/16 v0, 0x0

    sput-wide v0, Lorg/cybergarage/upnp/event/NotifyRequest;->lastEventTime:J

    .line 205
    const-string v0, "NOT_IMPLEMENTED"

    sput-object v0, Lorg/cybergarage/upnp/event/NotifyRequest;->mCurrentMetaData:Ljava/lang/String;

    .line 206
    const-string v0, ""

    sput-object v0, Lorg/cybergarage/upnp/event/NotifyRequest;->mCurrentTrackDuration:Ljava/lang/String;

    .line 207
    const-string v0, "0"

    sput-object v0, Lorg/cybergarage/upnp/event/NotifyRequest;->mCurrentNumberOfTracks:Ljava/lang/String;

    .line 208
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/cybergarage/upnp/event/NotifyRequest;->mVarList:Ljava/util/HashMap;

    .line 209
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v0, Lorg/cybergarage/upnp/event/NotifyRequest;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lorg/cybergarage/soap/SOAPRequest;-><init>()V

    .line 66
    return-void
.end method

.method public constructor <init>(Lorg/cybergarage/http/HTTPRequest;)V
    .locals 0
    .parameter "httpReq"

    .prologue
    .line 69
    invoke-direct {p0}, Lorg/cybergarage/soap/SOAPRequest;-><init>()V

    .line 70
    invoke-virtual {p0, p1}, Lorg/cybergarage/http/HTTPRequest;->set(Lorg/cybergarage/http/HTTPRequest;)V

    .line 71
    return-void
.end method

.method private createLastChangePropertySetNode(Ljava/util/HashMap;Ljava/lang/String;)Lorg/cybergarage/xml/Node;
    .locals 11
    .parameter
    .parameter "ns"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/cybergarage/xml/Node;"
        }
    .end annotation

    .prologue
    .line 243
    .local p1, stateVariables:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Lorg/cybergarage/xml/Node;

    const-string v9, "e:propertyset"

    invoke-direct {v5, v9}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 245
    .local v5, propSetNode:Lorg/cybergarage/xml/Node;
    const-string v9, "e"

    const-string v10, "urn:schemas-upnp-org:event-1-0"

    invoke-virtual {v5, v9, v10}, Lorg/cybergarage/xml/Node;->setNameSpace(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v9, "e"

    const-string v10, "propertyset"

    invoke-virtual {v5, v9, v10}, Lorg/cybergarage/xml/Node;->setName(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    new-instance v3, Lorg/cybergarage/xml/Node;

    invoke-direct {v3}, Lorg/cybergarage/xml/Node;-><init>()V

    .line 249
    .local v3, lastChangeNode:Lorg/cybergarage/xml/Node;
    const-string v9, "LastChange"

    invoke-virtual {v3, v9}, Lorg/cybergarage/xml/Node;->setName(Ljava/lang/String;)V

    .line 251
    new-instance v0, Lorg/cybergarage/xml/Node;

    invoke-direct {v0}, Lorg/cybergarage/xml/Node;-><init>()V

    .line 252
    .local v0, eventNode:Lorg/cybergarage/xml/Node;
    const-string v9, "Event"

    invoke-virtual {v0, v9}, Lorg/cybergarage/xml/Node;->setName(Ljava/lang/String;)V

    .line 253
    const-string v9, "xmlns"

    invoke-virtual {v0, v9, p2}, Lorg/cybergarage/xml/Node;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    new-instance v2, Lorg/cybergarage/xml/Node;

    invoke-direct {v2}, Lorg/cybergarage/xml/Node;-><init>()V

    .line 256
    .local v2, instanceIDNode:Lorg/cybergarage/xml/Node;
    const-string v9, "InstanceID"

    invoke-virtual {v2, v9}, Lorg/cybergarage/xml/Node;->setName(Ljava/lang/String;)V

    .line 257
    const-string v9, "val"

    const-string v10, "0"

    invoke-virtual {v2, v9, v10}, Lorg/cybergarage/xml/Node;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-virtual {v0, v2}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 261
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 264
    .local v6, stateVariable:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v8, Lorg/cybergarage/xml/Node;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-direct {v8, v9}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 265
    .local v8, varNameNode:Lorg/cybergarage/xml/Node;
    invoke-virtual {v8}, Lorg/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "lastchange"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 268
    invoke-virtual {v8}, Lorg/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/cybergarage/upnp/event/NotifyRequest;->readVarList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 269
    .local v7, value:Ljava/lang/String;
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_2

    .line 270
    :cond_1
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    .end local v7           #value:Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 272
    .restart local v7       #value:Ljava/lang/String;
    :cond_2
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_f

    .line 273
    :cond_3
    const-string v7, "0"

    .line 277
    invoke-virtual {v8}, Lorg/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "currenttrackduration"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 278
    sget-object v7, Lorg/cybergarage/upnp/event/NotifyRequest;->mCurrentTrackDuration:Ljava/lang/String;

    .line 280
    :cond_4
    invoke-virtual {v8}, Lorg/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "CurrentTrackMetaData"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 281
    sget-object v7, Lorg/cybergarage/upnp/event/NotifyRequest;->mCurrentMetaData:Ljava/lang/String;

    .line 283
    :cond_5
    invoke-virtual {v8}, Lorg/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "AVTransportURIMetaData"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 284
    sget-object v7, Lorg/cybergarage/upnp/event/NotifyRequest;->mCurrentMetaData:Ljava/lang/String;

    .line 287
    :cond_6
    invoke-virtual {v8}, Lorg/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "TransportStatus"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 288
    const-string v7, "OK"

    .line 290
    :cond_7
    invoke-virtual {v8}, Lorg/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "TransportState"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 291
    const-string v7, "STOPPED"

    .line 293
    :cond_8
    invoke-virtual {v8}, Lorg/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "CurrentPlayMode"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 294
    const-string v7, "NORMAL"

    .line 296
    :cond_9
    invoke-virtual {v8}, Lorg/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "TransportPlaySpeed"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 297
    const-string v7, "1"

    .line 299
    :cond_a
    invoke-virtual {v8}, Lorg/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "CurrentTransportActions"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 300
    const-string v7, "Play,Stop,Pause"

    .line 302
    :cond_b
    invoke-virtual {v8}, Lorg/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "NumberOfTracks"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 303
    sget-object v7, Lorg/cybergarage/upnp/event/NotifyRequest;->mCurrentNumberOfTracks:Ljava/lang/String;

    .line 305
    :cond_c
    invoke-virtual {v8}, Lorg/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "NrTracks"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 306
    sget-object v7, Lorg/cybergarage/upnp/event/NotifyRequest;->mCurrentNumberOfTracks:Ljava/lang/String;

    .line 308
    :cond_d
    invoke-virtual {v8}, Lorg/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "CurrentTrack"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 309
    const-string v7, "1"

    .line 311
    :cond_e
    invoke-virtual {v8}, Lorg/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Track"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 312
    const-string v7, "1"

    .line 316
    :cond_f
    invoke-virtual {v8}, Lorg/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Volume"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 318
    const-string v9, "channel"

    const-string v10, "Master"

    invoke-virtual {v8, v9, v10}, Lorg/cybergarage/xml/Node;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    :cond_10
    invoke-virtual {v8}, Lorg/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Mute"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 322
    const-string v9, "channel"

    const-string v10, "Master"

    invoke-virtual {v8, v9, v10}, Lorg/cybergarage/xml/Node;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    :cond_11
    const-string v9, "val"

    invoke-virtual {v8, v9, v7}, Lorg/cybergarage/xml/Node;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-virtual {v2, v8}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    goto/16 :goto_0

    .line 328
    .end local v6           #stateVariable:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7           #value:Ljava/lang/String;
    .end local v8           #varNameNode:Lorg/cybergarage/xml/Node;
    :cond_12
    new-instance v4, Lorg/cybergarage/xml/Node;

    invoke-direct {v4}, Lorg/cybergarage/xml/Node;-><init>()V

    .line 329
    .local v4, propNode:Lorg/cybergarage/xml/Node;
    const-string v9, "e"

    const-string v10, "property"

    invoke-virtual {v4, v9, v10}, Lorg/cybergarage/xml/Node;->setName(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    invoke-virtual {v4, v3}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 331
    invoke-virtual {v5, v4}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 332
    invoke-virtual {v0}, Lorg/cybergarage/xml/Node;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lorg/cybergarage/xml/Node;->setValue(Ljava/lang/String;)V

    .line 334
    return-object v5
.end method

.method private createPropertySetNode(Ljava/lang/String;Ljava/lang/String;)Lorg/cybergarage/xml/Node;
    .locals 5
    .parameter "varName"
    .parameter "value"

    .prologue
    .line 339
    new-instance v1, Lorg/cybergarage/xml/Node;

    const-string v3, "propertyset"

    invoke-direct {v1, v3}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 341
    .local v1, propSetNode:Lorg/cybergarage/xml/Node;
    const-string v3, "e"

    const-string v4, "urn:schemas-upnp-org:event-1-0"

    invoke-virtual {v1, v3, v4}, Lorg/cybergarage/xml/Node;->setNameSpace(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    new-instance v0, Lorg/cybergarage/xml/Node;

    const-string v3, "property"

    invoke-direct {v0, v3}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 344
    .local v0, propNode:Lorg/cybergarage/xml/Node;
    invoke-virtual {v1, v0}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 348
    new-instance v2, Lorg/cybergarage/xml/Node;

    invoke-direct {v2, p1}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 349
    .local v2, varNameNode:Lorg/cybergarage/xml/Node;
    invoke-virtual {v2, p2}, Lorg/cybergarage/xml/Node;->setValue(Ljava/lang/String;)V

    .line 350
    invoke-virtual {v0, v2}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 352
    return-object v1
.end method

.method private createPropertySetNode(Ljava/util/HashMap;)Lorg/cybergarage/xml/Node;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/cybergarage/xml/Node;"
        }
    .end annotation

    .prologue
    .line 179
    .local p1, stateVariables:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Lorg/cybergarage/xml/Node;

    const-string v7, "e:propertyset"

    invoke-direct {v3, v7}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 181
    .local v3, propSetNode:Lorg/cybergarage/xml/Node;
    const-string v7, "e"

    const-string v8, "urn:schemas-upnp-org:event-1-0"

    invoke-virtual {v3, v7, v8}, Lorg/cybergarage/xml/Node;->setNameSpace(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v7, "e"

    const-string v8, "propertyset"

    invoke-virtual {v3, v7, v8}, Lorg/cybergarage/xml/Node;->setName(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 187
    .local v4, stateVariable:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lorg/cybergarage/xml/Node;

    const-string v7, "property"

    invoke-direct {v2, v7}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 188
    .local v2, propNode:Lorg/cybergarage/xml/Node;
    const-string v7, "e"

    const-string v8, "property"

    invoke-virtual {v2, v7, v8}, Lorg/cybergarage/xml/Node;->setName(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 190
    .local v1, key:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 191
    new-instance v6, Lorg/cybergarage/xml/Node;

    invoke-direct {v6, v1}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 192
    .local v6, varNameNode:Lorg/cybergarage/xml/Node;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 193
    .local v5, value:Ljava/lang/String;
    if-nez v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_2

    .line 194
    :cond_1
    const-string v5, "0"

    .line 196
    :cond_2
    invoke-virtual {v6, v5}, Lorg/cybergarage/xml/Node;->setValue(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v2, v6}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 198
    invoke-virtual {v3, v2}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    goto :goto_0

    .line 202
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #propNode:Lorg/cybergarage/xml/Node;
    .end local v4           #stateVariable:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5           #value:Ljava/lang/String;
    .end local v6           #varNameNode:Lorg/cybergarage/xml/Node;
    :cond_3
    return-object v3
.end method

.method private getProperty(Lorg/cybergarage/xml/Node;)Lorg/cybergarage/upnp/event/Property;
    .locals 4
    .parameter "varNode"

    .prologue
    .line 371
    new-instance v1, Lorg/cybergarage/upnp/event/Property;

    invoke-direct {v1}, Lorg/cybergarage/upnp/event/Property;-><init>()V

    .line 372
    .local v1, prop:Lorg/cybergarage/upnp/event/Property;
    if-nez p1, :cond_0

    .line 381
    :goto_0
    return-object v1

    .line 375
    :cond_0
    invoke-virtual {p1}, Lorg/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v2

    .line 376
    .local v2, variableName:Ljava/lang/String;
    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 377
    .local v0, index:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 378
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 379
    :cond_1
    invoke-virtual {v1, v2}, Lorg/cybergarage/upnp/event/Property;->setName(Ljava/lang/String;)V

    .line 380
    invoke-virtual {p1}, Lorg/cybergarage/xml/Node;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/cybergarage/upnp/event/Property;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getVariableNode()Lorg/cybergarage/xml/Node;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 357
    invoke-virtual {p0}, Lorg/cybergarage/soap/SOAPRequest;->getEnvelopeNode()Lorg/cybergarage/xml/Node;

    move-result-object v1

    .line 358
    .local v1, rootNode:Lorg/cybergarage/xml/Node;
    if-nez v1, :cond_1

    .line 365
    :cond_0
    :goto_0
    return-object v2

    .line 360
    :cond_1
    invoke-virtual {v1}, Lorg/cybergarage/xml/Node;->hasNodes()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 362
    invoke-virtual {v1, v4}, Lorg/cybergarage/xml/Node;->getNode(I)Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 363
    .local v0, propNode:Lorg/cybergarage/xml/Node;
    invoke-virtual {v0}, Lorg/cybergarage/xml/Node;->hasNodes()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 365
    invoke-virtual {v0, v4}, Lorg/cybergarage/xml/Node;->getNode(I)Lorg/cybergarage/xml/Node;

    move-result-object v2

    goto :goto_0
.end method

.method public static readVarList(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "varName"

    .prologue
    .line 224
    const-string v1, ""

    .line 225
    .local v1, value:Ljava/lang/String;
    sget-object v2, Lorg/cybergarage/upnp/event/NotifyRequest;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 226
    .local v0, readLock:Ljava/util/concurrent/locks/Lock;
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 228
    if-eqz p0, :cond_0

    .line 229
    :try_start_0
    sget-object v2, Lorg/cybergarage/upnp/event/NotifyRequest;->mVarList:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #value:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    .restart local v1       #value:Ljava/lang/String;
    :cond_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 235
    return-object v1

    .line 232
    .end local v1           #value:Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2
.end method

.method public static writeVarList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "varName"
    .parameter "value"

    .prologue
    .line 212
    sget-object v1, Lorg/cybergarage/upnp/event/NotifyRequest;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 213
    .local v0, writeLock:Ljava/util/concurrent/locks/Lock;
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 215
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 216
    :try_start_0
    sget-object v1, Lorg/cybergarage/upnp/event/NotifyRequest;->mVarList:Ljava/util/HashMap;

    invoke-virtual {v1, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    :cond_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 221
    return-void

    .line 219
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method


# virtual methods
.method public getPropertyList()Lorg/cybergarage/upnp/event/PropertyList;
    .locals 6

    .prologue
    .line 386
    new-instance v3, Lorg/cybergarage/upnp/event/PropertyList;

    invoke-direct {v3}, Lorg/cybergarage/upnp/event/PropertyList;-><init>()V

    .line 387
    .local v3, properties:Lorg/cybergarage/upnp/event/PropertyList;
    invoke-virtual {p0}, Lorg/cybergarage/soap/SOAPRequest;->getEnvelopeNode()Lorg/cybergarage/xml/Node;

    move-result-object v4

    .line 388
    .local v4, varSetNode:Lorg/cybergarage/xml/Node;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v4}, Lorg/cybergarage/xml/Node;->getNNodes()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 389
    invoke-virtual {v4, v0}, Lorg/cybergarage/xml/Node;->getNode(I)Lorg/cybergarage/xml/Node;

    move-result-object v2

    .line 390
    .local v2, propNode:Lorg/cybergarage/xml/Node;
    if-nez v2, :cond_0

    .line 388
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 392
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lorg/cybergarage/xml/Node;->getNode(I)Lorg/cybergarage/xml/Node;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/cybergarage/upnp/event/NotifyRequest;->getProperty(Lorg/cybergarage/xml/Node;)Lorg/cybergarage/upnp/event/Property;

    move-result-object v1

    .line 393
    .local v1, prop:Lorg/cybergarage/upnp/event/Property;
    invoke-virtual {v3, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 395
    .end local v1           #prop:Lorg/cybergarage/upnp/event/Property;
    .end local v2           #propNode:Lorg/cybergarage/xml/Node;
    :cond_1
    return-object v3
.end method

.method public getSEQ()J
    .locals 2

    .prologue
    .line 116
    const-string v0, "SEQ"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->getLongHeaderValue(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    const-string v0, "SID"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cybergarage/upnp/event/Subscription;->getSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setNT(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 79
    const-string v0, "NT"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public setNTS(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 88
    const-string v0, "NTS"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public setRequest(Lorg/cybergarage/upnp/event/Subscriber;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "sub"
    .parameter "varName"
    .parameter "value"

    .prologue
    .line 125
    invoke-virtual {p1}, Lorg/cybergarage/upnp/event/Subscriber;->getDeliveryURL()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, callback:Ljava/lang/String;
    invoke-virtual {p1}, Lorg/cybergarage/upnp/event/Subscriber;->getSID()Ljava/lang/String;

    move-result-object v7

    .line 127
    .local v7, sid:Ljava/lang/String;
    invoke-virtual {p1}, Lorg/cybergarage/upnp/event/Subscriber;->getNotifyCount()J

    move-result-wide v2

    .line 128
    .local v2, notifyCnt:J
    invoke-virtual {p1}, Lorg/cybergarage/upnp/event/Subscriber;->getDeliveryHost()Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, host:Ljava/lang/String;
    invoke-virtual {p1}, Lorg/cybergarage/upnp/event/Subscriber;->getDeliveryPath()Ljava/lang/String;

    move-result-object v4

    .line 130
    .local v4, path:Ljava/lang/String;
    invoke-virtual {p1}, Lorg/cybergarage/upnp/event/Subscriber;->getDeliveryPort()I

    move-result v5

    .line 132
    .local v5, port:I
    const-string v8, "NOTIFY"

    invoke-virtual {p0, v8}, Lorg/cybergarage/http/HTTPRequest;->setMethod(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0, v4}, Lorg/cybergarage/http/HTTPRequest;->setURI(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0, v1, v5}, Lorg/cybergarage/http/HTTPPacket;->setHost(Ljava/lang/String;I)V

    .line 135
    const-string v8, "upnp:event"

    invoke-virtual {p0, v8}, Lorg/cybergarage/upnp/event/NotifyRequest;->setNT(Ljava/lang/String;)V

    .line 136
    const-string v8, "upnp:propchange"

    invoke-virtual {p0, v8}, Lorg/cybergarage/upnp/event/NotifyRequest;->setNTS(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0, v7}, Lorg/cybergarage/upnp/event/NotifyRequest;->setSID(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0, v2, v3}, Lorg/cybergarage/upnp/event/NotifyRequest;->setSEQ(J)V

    .line 140
    const-string v8, "text/xml; charset=\"utf-8\""

    invoke-virtual {p0, v8}, Lorg/cybergarage/http/HTTPPacket;->setContentType(Ljava/lang/String;)V

    .line 141
    invoke-direct {p0, p2, p3}, Lorg/cybergarage/upnp/event/NotifyRequest;->createPropertySetNode(Ljava/lang/String;Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v6

    .line 142
    .local v6, propSetNode:Lorg/cybergarage/xml/Node;
    invoke-virtual {p0, v6}, Lorg/cybergarage/soap/SOAPRequest;->setContent(Lorg/cybergarage/xml/Node;)V

    .line 144
    const/4 v8, 0x1

    return v8
.end method

.method public setRequest(Lorg/cybergarage/upnp/event/Subscriber;Ljava/util/HashMap;Ljava/lang/String;)Z
    .locals 10
    .parameter "sub"
    .parameter
    .parameter "ns"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/cybergarage/upnp/event/Subscriber;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p2, stateVariables:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v9, 0x1

    .line 149
    invoke-virtual {p1}, Lorg/cybergarage/upnp/event/Subscriber;->getDeliveryURL()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, callback:Ljava/lang/String;
    invoke-virtual {p1}, Lorg/cybergarage/upnp/event/Subscriber;->getSID()Ljava/lang/String;

    move-result-object v7

    .line 151
    .local v7, sid:Ljava/lang/String;
    invoke-virtual {p1}, Lorg/cybergarage/upnp/event/Subscriber;->getNotifyCount()J

    move-result-wide v2

    .line 152
    .local v2, notifyCnt:J
    invoke-virtual {p1}, Lorg/cybergarage/upnp/event/Subscriber;->getDeliveryHost()Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, host:Ljava/lang/String;
    invoke-virtual {p1}, Lorg/cybergarage/upnp/event/Subscriber;->getDeliveryPath()Ljava/lang/String;

    move-result-object v4

    .line 154
    .local v4, path:Ljava/lang/String;
    invoke-virtual {p1}, Lorg/cybergarage/upnp/event/Subscriber;->getDeliveryPort()I

    move-result v5

    .line 156
    .local v5, port:I
    const-string v8, "NOTIFY"

    invoke-virtual {p0, v8}, Lorg/cybergarage/http/HTTPRequest;->setMethod(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0, v4}, Lorg/cybergarage/http/HTTPRequest;->setURI(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0, v1, v5}, Lorg/cybergarage/http/HTTPPacket;->setHost(Ljava/lang/String;I)V

    .line 159
    const-string v8, "upnp:event"

    invoke-virtual {p0, v8}, Lorg/cybergarage/upnp/event/NotifyRequest;->setNT(Ljava/lang/String;)V

    .line 160
    const-string v8, "upnp:propchange"

    invoke-virtual {p0, v8}, Lorg/cybergarage/upnp/event/NotifyRequest;->setNTS(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0, v7}, Lorg/cybergarage/upnp/event/NotifyRequest;->setSID(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0, v2, v3}, Lorg/cybergarage/upnp/event/NotifyRequest;->setSEQ(J)V

    .line 164
    const-string v8, "text/xml; charset=\"utf-8\""

    invoke-virtual {p0, v8}, Lorg/cybergarage/http/HTTPPacket;->setContentType(Ljava/lang/String;)V

    .line 165
    const/4 v6, 0x0

    .line 166
    .local v6, propSetNode:Lorg/cybergarage/xml/Node;
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 167
    :cond_0
    invoke-direct {p0, p2}, Lorg/cybergarage/upnp/event/NotifyRequest;->createPropertySetNode(Ljava/util/HashMap;)Lorg/cybergarage/xml/Node;

    move-result-object v6

    .line 171
    :goto_0
    invoke-virtual {p0, v6}, Lorg/cybergarage/soap/SOAPRequest;->setContent(Lorg/cybergarage/xml/Node;)V

    .line 173
    return v9

    .line 169
    :cond_1
    invoke-direct {p0, p2, p3}, Lorg/cybergarage/upnp/event/NotifyRequest;->createLastChangePropertySetNode(Ljava/util/HashMap;Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v6

    goto :goto_0
.end method

.method public setSEQ(J)V
    .locals 2
    .parameter "value"

    .prologue
    .line 111
    const-string v0, "SEQ"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public setSID(Ljava/lang/String;)V
    .locals 2
    .parameter "id"

    .prologue
    .line 97
    const-string v0, "SID"

    invoke-static {p1}, Lorg/cybergarage/upnp/event/Subscription;->toSIDHeaderString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method
