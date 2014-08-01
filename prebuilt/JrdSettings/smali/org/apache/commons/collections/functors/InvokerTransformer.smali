.class public Lorg/apache/commons/collections/functors/InvokerTransformer;
.super Ljava/lang/Object;
.source "InvokerTransformer.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/collections/Transformer;


# static fields
.field static final serialVersionUID:J = -0x78170094848331c8L


# instance fields
.field private final iArgs:[Ljava/lang/Object;

.field private final iMethodName:Ljava/lang/String;

.field private final iParamTypes:[Ljava/lang/Class;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "methodName"

    .prologue
    const/4 v0, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lorg/apache/commons/collections/functors/InvokerTransformer;->iMethodName:Ljava/lang/String;

    .line 93
    iput-object v0, p0, Lorg/apache/commons/collections/functors/InvokerTransformer;->iParamTypes:[Ljava/lang/Class;

    .line 94
    iput-object v0, p0, Lorg/apache/commons/collections/functors/InvokerTransformer;->iArgs:[Ljava/lang/Object;

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 0
    .parameter "methodName"
    .parameter "paramTypes"
    .parameter "args"

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lorg/apache/commons/collections/functors/InvokerTransformer;->iMethodName:Ljava/lang/String;

    .line 108
    iput-object p2, p0, Lorg/apache/commons/collections/functors/InvokerTransformer;->iParamTypes:[Ljava/lang/Class;

    .line 109
    iput-object p3, p0, Lorg/apache/commons/collections/functors/InvokerTransformer;->iArgs:[Ljava/lang/Object;

    .line 110
    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lorg/apache/commons/collections/Transformer;
    .locals 2
    .parameter "methodName"

    .prologue
    .line 53
    if-nez p0, :cond_0

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The method to invoke must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/functors/InvokerTransformer;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/functors/InvokerTransformer;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lorg/apache/commons/collections/Transformer;
    .locals 2
    .parameter "methodName"
    .parameter "paramTypes"
    .parameter "args"

    .prologue
    .line 68
    if-nez p0, :cond_0

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The method to invoke must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
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

    .line 74
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The parameter types must match the arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_4
    if-eqz p1, :cond_5

    array-length v0, p1

    if-nez v0, :cond_6

    .line 77
    :cond_5
    new-instance v0, Lorg/apache/commons/collections/functors/InvokerTransformer;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/functors/InvokerTransformer;-><init>(Ljava/lang/String;)V

    .line 81
    :goto_0
    return-object v0

    .line 79
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, [Ljava/lang/Class;

    .line 80
    .restart local p1
    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p2

    .end local p2
    check-cast p2, [Ljava/lang/Object;

    .line 81
    .restart local p2
    new-instance v0, Lorg/apache/commons/collections/functors/InvokerTransformer;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections/functors/InvokerTransformer;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter "input"

    .prologue
    .line 119
    if-nez p1, :cond_0

    .line 120
    const/4 v3, 0x0

    .line 125
    :goto_0
    return-object v3

    .line 123
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 124
    .local v0, cls:Ljava/lang/Class;
    iget-object v3, p0, Lorg/apache/commons/collections/functors/InvokerTransformer;->iMethodName:Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/commons/collections/functors/InvokerTransformer;->iParamTypes:[Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 125
    .local v2, method:Ljava/lang/reflect/Method;
    iget-object v3, p0, Lorg/apache/commons/collections/functors/InvokerTransformer;->iArgs:[Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    goto :goto_0

    .line 128
    .end local v0           #cls:Ljava/lang/Class;
    .end local v2           #method:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .local v1, ex:Ljava/lang/NoSuchMethodException;
    new-instance v3, Lorg/apache/commons/collections/FunctorException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "InvokerTransformer: The method \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/commons/collections/functors/InvokerTransformer;->iMethodName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\' on \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\' does not exist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/commons/collections/FunctorException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 130
    .end local v1           #ex:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .local v1, ex:Ljava/lang/IllegalAccessException;
    new-instance v3, Lorg/apache/commons/collections/FunctorException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "InvokerTransformer: The method \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/commons/collections/functors/InvokerTransformer;->iMethodName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\' on \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\' cannot be accessed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/commons/collections/FunctorException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 132
    .end local v1           #ex:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .local v1, ex:Ljava/lang/reflect/InvocationTargetException;
    new-instance v3, Lorg/apache/commons/collections/FunctorException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "InvokerTransformer: The method \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/commons/collections/functors/InvokerTransformer;->iMethodName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\' on \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\' threw an exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/apache/commons/collections/FunctorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
