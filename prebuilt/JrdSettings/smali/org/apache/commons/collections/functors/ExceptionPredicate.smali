.class public final Lorg/apache/commons/collections/functors/ExceptionPredicate;
.super Ljava/lang/Object;
.source "ExceptionPredicate.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/collections/Predicate;


# static fields
.field public static final INSTANCE:Lorg/apache/commons/collections/Predicate; = null

.field static final serialVersionUID:J = 0x63a14ee6517eba09L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lorg/apache/commons/collections/functors/ExceptionPredicate;

    invoke-direct {v0}, Lorg/apache/commons/collections/functors/ExceptionPredicate;-><init>()V

    sput-object v0, Lorg/apache/commons/collections/functors/ExceptionPredicate;->INSTANCE:Lorg/apache/commons/collections/Predicate;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public static getInstance()Lorg/apache/commons/collections/Predicate;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lorg/apache/commons/collections/functors/ExceptionPredicate;->INSTANCE:Lorg/apache/commons/collections/Predicate;

    return-object v0
.end method


# virtual methods
.method public evaluate(Ljava/lang/Object;)Z
    .locals 2
    .parameter "object"

    .prologue
    .line 64
    new-instance v0, Lorg/apache/commons/collections/FunctorException;

    const-string v1, "ExceptionPredicate invoked"

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/FunctorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
