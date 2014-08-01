.class public Lorg/apache/commons/collections/functors/InstantiateFactory;
.super Ljava/lang/Object;
.source "InstantiateFactory.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/collections/Factory;


# static fields
.field static final serialVersionUID:J = -0x6b4e636198defb15L


# instance fields
.field private final iArgs:[Ljava/lang/Object;

.field private final iClassToInstantiate:Ljava/lang/Class;

.field private transient iConstructor:Ljava/lang/reflect/Constructor;

.field private final iParamTypes:[Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .parameter "classToInstantiate"

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v0, p0, Lorg/apache/commons/collections/functors/InstantiateFactory;->iConstructor:Ljava/lang/reflect/Constructor;

    .line 82
    iput-object p1, p0, Lorg/apache/commons/collections/functors/InstantiateFactory;->iClassToInstantiate:Ljava/lang/Class;

    .line 83
    iput-object v0, p0, Lorg/apache/commons/collections/functors/InstantiateFactory;->iParamTypes:[Ljava/lang/Class;

    .line 84
    iput-object v0, p0, Lorg/apache/commons/collections/functors/InstantiateFactory;->iArgs:[Ljava/lang/Object;

    .line 85
    invoke-direct {p0}, Lorg/apache/commons/collections/functors/InstantiateFactory;->findConstructor()V

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 1
    .parameter "classToInstantiate"
    .parameter "paramTypes"
    .parameter "args"

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/functors/InstantiateFactory;->iConstructor:Ljava/lang/reflect/Constructor;

    .line 98
    iput-object p1, p0, Lorg/apache/commons/collections/functors/InstantiateFactory;->iClassToInstantiate:Ljava/lang/Class;

    .line 99
    iput-object p2, p0, Lorg/apache/commons/collections/functors/InstantiateFactory;->iParamTypes:[Ljava/lang/Class;

    .line 100
    iput-object p3, p0, Lorg/apache/commons/collections/functors/InstantiateFactory;->iArgs:[Ljava/lang/Object;

    .line 101
    invoke-direct {p0}, Lorg/apache/commons/collections/functors/InstantiateFactory;->findConstructor()V

    .line 102
    return-void
.end method

.method private findConstructor()V
    .locals 3

    .prologue
    .line 109
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/functors/InstantiateFactory;->iClassToInstantiate:Ljava/lang/Class;

    iget-object v2, p0, Lorg/apache/commons/collections/functors/InstantiateFactory;->iParamTypes:[Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/collections/functors/InstantiateFactory;->iConstructor:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    return-void

    .line 112
    :catch_0
    move-exception v0

    .local v0, ex:Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "InstantiateFactory: The constructor must exist and be public "

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getInstance(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Lorg/apache/commons/collections/Factory;
    .locals 2
    .parameter "classToInstantiate"
    .parameter "paramTypes"
    .parameter "args"

    .prologue
    .line 56
    if-nez p0, :cond_0

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Class to instantiate must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_3

    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_3

    :cond_2
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_4

    .line 62
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter types must match the arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_4
    if-eqz p1, :cond_5

    array-length v0, p1

    if-nez v0, :cond_6

    .line 66
    :cond_5
    new-instance v0, Lorg/apache/commons/collections/functors/InstantiateFactory;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/functors/InstantiateFactory;-><init>(Ljava/lang/Class;)V

    .line 70
    :goto_0
    return-object v0

    .line 68
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, [Ljava/lang/Class;

    .line 69
    .restart local p1
    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p2

    .end local p2
    check-cast p2, [Ljava/lang/Object;

    .line 70
    .restart local p2
    new-instance v0, Lorg/apache/commons/collections/functors/InstantiateFactory;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections/functors/InstantiateFactory;-><init>(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public create()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 123
    iget-object v1, p0, Lorg/apache/commons/collections/functors/InstantiateFactory;->iConstructor:Ljava/lang/reflect/Constructor;

    if-nez v1, :cond_0

    .line 124
    invoke-direct {p0}, Lorg/apache/commons/collections/functors/InstantiateFactory;->findConstructor()V

    .line 128
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/functors/InstantiateFactory;->iConstructor:Ljava/lang/reflect/Constructor;

    iget-object v2, p0, Lorg/apache/commons/collections/functors/InstantiateFactory;->iArgs:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    return-object v1

    .line 131
    :catch_0
    move-exception v0

    .local v0, ex:Ljava/lang/InstantiationException;
    new-instance v1, Lorg/apache/commons/collections/FunctorException;

    const-string v2, "InstantiateFactory: InstantiationException"

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/collections/FunctorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 133
    .end local v0           #ex:Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    .local v0, ex:Ljava/lang/IllegalAccessException;
    new-instance v1, Lorg/apache/commons/collections/FunctorException;

    const-string v2, "InstantiateFactory: Constructor must be public"

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/collections/FunctorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 135
    .end local v0           #ex:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .local v0, ex:Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Lorg/apache/commons/collections/FunctorException;

    const-string v2, "InstantiateFactory: Constructor threw an exception"

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/collections/FunctorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
