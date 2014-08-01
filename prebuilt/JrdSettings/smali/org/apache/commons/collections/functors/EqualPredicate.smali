.class public final Lorg/apache/commons/collections/functors/EqualPredicate;
.super Ljava/lang/Object;
.source "EqualPredicate.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/collections/Predicate;


# static fields
.field static final serialVersionUID:J = 0x4e2f2937b0cc6c91L


# instance fields
.field private final iValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter "object"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/apache/commons/collections/functors/EqualPredicate;->iValue:Ljava/lang/Object;

    .line 62
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/apache/commons/collections/Predicate;
    .locals 1
    .parameter "object"

    .prologue
    .line 47
    if-nez p0, :cond_0

    .line 48
    sget-object v0, Lorg/apache/commons/collections/functors/NullPredicate;->INSTANCE:Lorg/apache/commons/collections/Predicate;

    .line 50
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/commons/collections/functors/EqualPredicate;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/functors/EqualPredicate;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public evaluate(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/commons/collections/functors/EqualPredicate;->iValue:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/apache/commons/collections/functors/EqualPredicate;->iValue:Ljava/lang/Object;

    return-object v0
.end method
