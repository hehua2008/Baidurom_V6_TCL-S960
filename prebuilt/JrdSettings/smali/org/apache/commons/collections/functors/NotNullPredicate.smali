.class public final Lorg/apache/commons/collections/functors/NotNullPredicate;
.super Ljava/lang/Object;
.source "NotNullPredicate.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/collections/Predicate;


# static fields
.field public static final INSTANCE:Lorg/apache/commons/collections/Predicate; = null

.field static final serialVersionUID:J = 0x688d610bc4aab5e4L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lorg/apache/commons/collections/functors/NotNullPredicate;

    invoke-direct {v0}, Lorg/apache/commons/collections/functors/NotNullPredicate;-><init>()V

    sput-object v0, Lorg/apache/commons/collections/functors/NotNullPredicate;->INSTANCE:Lorg/apache/commons/collections/Predicate;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public static getInstance()Lorg/apache/commons/collections/Predicate;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lorg/apache/commons/collections/functors/NotNullPredicate;->INSTANCE:Lorg/apache/commons/collections/Predicate;

    return-object v0
.end method


# virtual methods
.method public evaluate(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 62
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
