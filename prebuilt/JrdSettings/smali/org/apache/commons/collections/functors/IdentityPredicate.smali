.class public final Lorg/apache/commons/collections/functors/IdentityPredicate;
.super Ljava/lang/Object;
.source "IdentityPredicate.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/collections/Predicate;


# static fields
.field static final serialVersionUID:J = -0x13f65150348d79dL


# instance fields
.field private final iValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter "object"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lorg/apache/commons/collections/functors/IdentityPredicate;->iValue:Ljava/lang/Object;

    .line 63
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/apache/commons/collections/Predicate;
    .locals 1
    .parameter "object"

    .prologue
    .line 48
    if-nez p0, :cond_0

    .line 49
    sget-object v0, Lorg/apache/commons/collections/functors/NullPredicate;->INSTANCE:Lorg/apache/commons/collections/Predicate;

    .line 51
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/commons/collections/functors/IdentityPredicate;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/functors/IdentityPredicate;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public evaluate(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 73
    iget-object v0, p0, Lorg/apache/commons/collections/functors/IdentityPredicate;->iValue:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/apache/commons/collections/functors/IdentityPredicate;->iValue:Ljava/lang/Object;

    return-object v0
.end method
