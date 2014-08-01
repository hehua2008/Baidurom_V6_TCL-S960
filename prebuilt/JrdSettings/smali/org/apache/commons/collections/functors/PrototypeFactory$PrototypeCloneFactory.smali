.class Lorg/apache/commons/collections/functors/PrototypeFactory$PrototypeCloneFactory;
.super Ljava/lang/Object;
.source "PrototypeFactory.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/collections/Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/functors/PrototypeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PrototypeCloneFactory"
.end annotation


# static fields
.field static final serialVersionUID:J = 0x4dc65f2a86ded103L


# instance fields
.field private transient iCloneMethod:Ljava/lang/reflect/Method;

.field private final iPrototype:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    .locals 0
    .parameter "prototype"
    .parameter "method"

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lorg/apache/commons/collections/functors/PrototypeFactory$PrototypeCloneFactory;->iPrototype:Ljava/lang/Object;

    .line 111
    iput-object p2, p0, Lorg/apache/commons/collections/functors/PrototypeFactory$PrototypeCloneFactory;->iCloneMethod:Ljava/lang/reflect/Method;

    .line 112
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Method;Lorg/apache/commons/collections/functors/PrototypeFactory$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/functors/PrototypeFactory$PrototypeCloneFactory;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method private findCloneMethod()V
    .locals 4

    .prologue
    .line 119
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/functors/PrototypeFactory$PrototypeCloneFactory;->iPrototype:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "clone"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/collections/functors/PrototypeFactory$PrototypeCloneFactory;->iCloneMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    return-void

    .line 122
    :catch_0
    move-exception v0

    .local v0, ex:Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "PrototypeCloneFactory: The clone method must exist and be public "

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public create()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 133
    iget-object v1, p0, Lorg/apache/commons/collections/functors/PrototypeFactory$PrototypeCloneFactory;->iCloneMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 134
    invoke-direct {p0}, Lorg/apache/commons/collections/functors/PrototypeFactory$PrototypeCloneFactory;->findCloneMethod()V

    .line 138
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/functors/PrototypeFactory$PrototypeCloneFactory;->iCloneMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lorg/apache/commons/collections/functors/PrototypeFactory$PrototypeCloneFactory;->iPrototype:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    return-object v1

    .line 141
    :catch_0
    move-exception v0

    .local v0, ex:Ljava/lang/IllegalAccessException;
    new-instance v1, Lorg/apache/commons/collections/FunctorException;

    const-string v2, "PrototypeCloneFactory: Clone method must be public"

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/collections/FunctorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 143
    .end local v0           #ex:Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .local v0, ex:Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Lorg/apache/commons/collections/FunctorException;

    const-string v2, "PrototypeCloneFactory: Clone method threw an exception"

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/collections/FunctorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
