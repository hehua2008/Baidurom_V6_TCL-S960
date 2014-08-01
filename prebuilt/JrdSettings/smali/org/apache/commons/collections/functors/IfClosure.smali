.class public Lorg/apache/commons/collections/functors/IfClosure;
.super Ljava/lang/Object;
.source "IfClosure.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/collections/Closure;


# static fields
.field static final serialVersionUID:J = 0x30d42478696adb72L


# instance fields
.field private final iFalseClosure:Lorg/apache/commons/collections/Closure;

.field private final iPredicate:Lorg/apache/commons/collections/Predicate;

.field private final iTrueClosure:Lorg/apache/commons/collections/Closure;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Closure;Lorg/apache/commons/collections/Closure;)V
    .locals 0
    .parameter "predicate"
    .parameter "trueClosure"
    .parameter "falseClosure"

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lorg/apache/commons/collections/functors/IfClosure;->iPredicate:Lorg/apache/commons/collections/Predicate;

    .line 74
    iput-object p2, p0, Lorg/apache/commons/collections/functors/IfClosure;->iTrueClosure:Lorg/apache/commons/collections/Closure;

    .line 75
    iput-object p3, p0, Lorg/apache/commons/collections/functors/IfClosure;->iFalseClosure:Lorg/apache/commons/collections/Closure;

    .line 76
    return-void
.end method

.method public static getInstance(Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Closure;Lorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Closure;
    .locals 2
    .parameter "predicate"
    .parameter "trueClosure"
    .parameter "falseClosure"

    .prologue
    .line 54
    if-nez p0, :cond_0

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Predicate must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 58
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Closures must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_2
    new-instance v0, Lorg/apache/commons/collections/functors/IfClosure;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections/functors/IfClosure;-><init>(Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Closure;Lorg/apache/commons/collections/Closure;)V

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)V
    .locals 2
    .parameter "input"

    .prologue
    .line 84
    iget-object v0, p0, Lorg/apache/commons/collections/functors/IfClosure;->iPredicate:Lorg/apache/commons/collections/Predicate;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 85
    iget-object v0, p0, Lorg/apache/commons/collections/functors/IfClosure;->iTrueClosure:Lorg/apache/commons/collections/Closure;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/Closure;->execute(Ljava/lang/Object;)V

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/functors/IfClosure;->iFalseClosure:Lorg/apache/commons/collections/Closure;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/Closure;->execute(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getFalseClosure()Lorg/apache/commons/collections/Closure;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/apache/commons/collections/functors/IfClosure;->iFalseClosure:Lorg/apache/commons/collections/Closure;

    return-object v0
.end method

.method public getPredicate()Lorg/apache/commons/collections/Predicate;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/apache/commons/collections/functors/IfClosure;->iPredicate:Lorg/apache/commons/collections/Predicate;

    return-object v0
.end method

.method public getTrueClosure()Lorg/apache/commons/collections/Closure;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/apache/commons/collections/functors/IfClosure;->iTrueClosure:Lorg/apache/commons/collections/Closure;

    return-object v0
.end method
