.class public Lorg/cybergarage/xml/ParserException;
.super Ljava/lang/Exception;
.source "ParserException.java"


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 30
    return-void
.end method
