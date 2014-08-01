.class public Lorg/apache/commons/collections/functors/ForClosure;
.super Ljava/lang/Object;
.source "ForClosure.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/collections/Closure;


# static fields
.field static final serialVersionUID:J = -0x10842851d0d342aaL


# instance fields
.field private final iClosure:Lorg/apache/commons/collections/Closure;

.field private final iCount:I


# direct methods
.method public constructor <init>(ILorg/apache/commons/collections/Closure;)V
    .locals 0
    .parameter "count"
    .parameter "closure"

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput p1, p0, Lorg/apache/commons/collections/functors/ForClosure;->iCount:I

    .line 70
    iput-object p2, p0, Lorg/apache/commons/collections/functors/ForClosure;->iClosure:Lorg/apache/commons/collections/Closure;

    .line 71
    return-void
.end method

.method public static getInstance(ILorg/apache/commons/collections/Closure;)Lorg/apache/commons/collections/Closure;
    .locals 1
    .parameter "count"
    .parameter "closure"

    .prologue
    .line 51
    if-lez p0, :cond_0

    if-nez p1, :cond_2

    .line 52
    :cond_0
    sget-object p1, Lorg/apache/commons/collections/functors/NOPClosure;->INSTANCE:Lorg/apache/commons/collections/Closure;

    .line 57
    .end local p1
    :cond_1
    :goto_0
    return-object p1

    .line 54
    .restart local p1
    :cond_2
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    .line 57
    new-instance v0, Lorg/apache/commons/collections/functors/ForClosure;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/functors/ForClosure;-><init>(ILorg/apache/commons/collections/Closure;)V

    move-object p1, v0

    goto :goto_0
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)V
    .locals 2
    .parameter "input"

    .prologue
    .line 79
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lorg/apache/commons/collections/functors/ForClosure;->iCount:I

    if-lt v0, v1, :cond_0

    .line 82
    return-void

    .line 80
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/functors/ForClosure;->iClosure:Lorg/apache/commons/collections/Closure;

    invoke-interface {v1, p1}, Lorg/apache/commons/collections/Closure;->execute(Ljava/lang/Object;)V

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getClosure()Lorg/apache/commons/collections/Closure;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/apache/commons/collections/functors/ForClosure;->iClosure:Lorg/apache/commons/collections/Closure;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lorg/apache/commons/collections/functors/ForClosure;->iCount:I

    return v0
.end method
