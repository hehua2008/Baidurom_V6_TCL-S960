.class public Lorg/apache/commons/collections/functors/PrototypeFactory;
.super Ljava/lang/Object;
.source "PrototypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/functors/PrototypeFactory$1;,
        Lorg/apache/commons/collections/functors/PrototypeFactory$PrototypeSerializationFactory;,
        Lorg/apache/commons/collections/functors/PrototypeFactory$PrototypeCloneFactory;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/apache/commons/collections/Factory;
    .locals 9
    .parameter "prototype"

    .prologue
    const/4 v8, 0x0

    .line 58
    if-nez p0, :cond_0

    .line 59
    sget-object v3, Lorg/apache/commons/collections/functors/ConstantFactory;->NULL_INSTANCE:Lorg/apache/commons/collections/Factory;

    .line 75
    .end local p0
    :goto_0
    return-object v3

    .line 62
    .restart local p0
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "clone"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 63
    .local v2, method:Ljava/lang/reflect/Method;
    new-instance v3, Lorg/apache/commons/collections/functors/PrototypeFactory$PrototypeCloneFactory;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v2, v4}, Lorg/apache/commons/collections/functors/PrototypeFactory$PrototypeCloneFactory;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;Lorg/apache/commons/collections/functors/PrototypeFactory$1;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    .end local v2           #method:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 67
    .local v0, ex:Ljava/lang/NoSuchMethodException;
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 68
    new-instance v3, Lorg/apache/commons/collections/functors/InstantiateFactory;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/commons/collections/functors/InstantiateFactory;-><init>(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 74
    :catch_1
    move-exception v1

    .local v1, ex2:Ljava/lang/NoSuchMethodException;
    instance-of v3, p0, Ljava/io/Serializable;

    if-eqz v3, :cond_1

    .line 75
    new-instance v3, Lorg/apache/commons/collections/functors/PrototypeFactory$PrototypeSerializationFactory;

    check-cast p0, Ljava/io/Serializable;

    .end local p0
    invoke-direct {v3, p0, v8}, Lorg/apache/commons/collections/functors/PrototypeFactory$PrototypeSerializationFactory;-><init>(Ljava/io/Serializable;Lorg/apache/commons/collections/functors/PrototypeFactory$1;)V

    goto :goto_0

    .line 79
    .restart local p0
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "The prototype must be cloneable via a public clone method"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
