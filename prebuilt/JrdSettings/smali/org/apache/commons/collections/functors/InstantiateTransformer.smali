.class public Lorg/apache/commons/collections/functors/InstantiateTransformer;
.super Ljava/lang/Object;
.source "InstantiateTransformer.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/collections/Transformer;


# static fields
.field public static final NO_ARG_INSTANCE:Lorg/apache/commons/collections/Transformer; = null

.field static final serialVersionUID:J = 0x348bf47fa486d03bL


# instance fields
.field private final iArgs:[Ljava/lang/Object;

.field private final iParamTypes:[Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lorg/apache/commons/collections/functors/InstantiateTransformer;

    invoke-direct {v0}, Lorg/apache/commons/collections/functors/InstantiateTransformer;-><init>()V

    sput-object v0, Lorg/apache/commons/collections/functors/InstantiateTransformer;->NO_ARG_INSTANCE:Lorg/apache/commons/collections/Transformer;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object v0, p0, Lorg/apache/commons/collections/functors/InstantiateTransformer;->iParamTypes:[Ljava/lang/Class;

    .line 75
    iput-object v0, p0, Lorg/apache/commons/collections/functors/InstantiateTransformer;->iArgs:[Ljava/lang/Object;

    .line 76
    return-void
.end method

.method public constructor <init>([Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 0
    .parameter "paramTypes"
    .parameter "args"

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lorg/apache/commons/collections/functors/InstantiateTransformer;->iParamTypes:[Ljava/lang/Class;

    .line 88
    iput-object p2, p0, Lorg/apache/commons/collections/functors/InstantiateTransformer;->iArgs:[Ljava/lang/Object;

    .line 89
    return-void
.end method

.method public static getInstance([Ljava/lang/Class;[Ljava/lang/Object;)Lorg/apache/commons/collections/Transformer;
    .locals 2
    .parameter "paramTypes"
    .parameter "args"

    .prologue
    .line 54
    if-nez p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    .line 57
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter types must match the arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_3
    if-eqz p0, :cond_4

    array-length v0, p0

    if-nez v0, :cond_5

    .line 61
    :cond_4
    sget-object v0, Lorg/apache/commons/collections/functors/InstantiateTransformer;->NO_ARG_INSTANCE:Lorg/apache/commons/collections/Transformer;

    .line 66
    :goto_0
    return-object v0

    .line 63
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/Class;

    .line 64
    .restart local p0
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, [Ljava/lang/Object;

    .line 66
    .restart local p1
    new-instance v0, Lorg/apache/commons/collections/functors/InstantiateTransformer;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/functors/InstantiateTransformer;-><init>([Ljava/lang/Class;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "input"

    .prologue
    .line 99
    :try_start_0
    instance-of v2, p1, Ljava/lang/Class;

    if-nez v2, :cond_1

    .line 100
    new-instance v3, Lorg/apache/commons/collections/FunctorException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "InstantiateTransformer: Input object was not an instanceof Class, it was a "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    if-nez p1, :cond_0

    const-string v2, "null object"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/apache/commons/collections/FunctorException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 108
    .end local p1
    :catch_0
    move-exception v1

    .local v1, ex:Ljava/lang/NoSuchMethodException;
    new-instance v2, Lorg/apache/commons/collections/FunctorException;

    const-string v3, "InstantiateTransformer: The constructor must exist and be public "

    invoke-direct {v2, v3}, Lorg/apache/commons/collections/FunctorException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 100
    .end local v1           #ex:Ljava/lang/NoSuchMethodException;
    .restart local p1
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 104
    :cond_1
    check-cast p1, Ljava/lang/Class;

    .end local p1
    iget-object v2, p0, Lorg/apache/commons/collections/functors/InstantiateTransformer;->iParamTypes:[Ljava/lang/Class;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 105
    .local v0, con:Ljava/lang/reflect/Constructor;
    iget-object v2, p0, Lorg/apache/commons/collections/functors/InstantiateTransformer;->iArgs:[Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v2

    return-object v2

    .line 110
    .end local v0           #con:Ljava/lang/reflect/Constructor;
    :catch_1
    move-exception v1

    .local v1, ex:Ljava/lang/InstantiationException;
    new-instance v2, Lorg/apache/commons/collections/FunctorException;

    const-string v3, "InstantiateTransformer: InstantiationException"

    invoke-direct {v2, v3, v1}, Lorg/apache/commons/collections/FunctorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 112
    .end local v1           #ex:Ljava/lang/InstantiationException;
    :catch_2
    move-exception v1

    .local v1, ex:Ljava/lang/IllegalAccessException;
    new-instance v2, Lorg/apache/commons/collections/FunctorException;

    const-string v3, "InstantiateTransformer: Constructor must be public"

    invoke-direct {v2, v3, v1}, Lorg/apache/commons/collections/FunctorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 114
    .end local v1           #ex:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v1

    .local v1, ex:Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Lorg/apache/commons/collections/FunctorException;

    const-string v3, "InstantiateTransformer: Constructor threw an exception"

    invoke-direct {v2, v3, v1}, Lorg/apache/commons/collections/FunctorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
