.class public final Lorg/apache/commons/collections/functors/InstanceofPredicate;
.super Ljava/lang/Object;
.source "InstanceofPredicate.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/collections/Predicate;


# static fields
.field static final serialVersionUID:J = -0x5cbd910de976d510L


# instance fields
.field private final iType:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/apache/commons/collections/functors/InstanceofPredicate;->iType:Ljava/lang/Class;

    .line 62
    return-void
.end method

.method public static getInstance(Ljava/lang/Class;)Lorg/apache/commons/collections/Predicate;
    .locals 2
    .parameter "type"

    .prologue
    .line 47
    if-nez p0, :cond_0

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The type to check instanceof must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/functors/InstanceofPredicate;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/functors/InstanceofPredicate;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public evaluate(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/commons/collections/functors/InstanceofPredicate;->iType:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/apache/commons/collections/functors/InstanceofPredicate;->iType:Ljava/lang/Class;

    return-object v0
.end method
