.class public Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier$Builder;
.super Ljava/lang/Object;
.source "GoogleIdTokenVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private clientIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final jsonFactory:Lcom/google/api/client/json/JsonFactory;

.field private final transport:Lcom/google/api/client/http/HttpTransport;


# direct methods
.method public constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)V
    .locals 1
    .parameter "transport"
    .parameter "jsonFactory"

    .prologue
    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier$Builder;->clientIds:Ljava/util/Set;

    .line 392
    iput-object p1, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier$Builder;->transport:Lcom/google/api/client/http/HttpTransport;

    .line 393
    iput-object p2, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier$Builder;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    .line 394
    return-void
.end method


# virtual methods
.method public build()Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;
    .locals 4

    .prologue
    .line 398
    new-instance v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;

    iget-object v1, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier$Builder;->clientIds:Ljava/util/Set;

    iget-object v2, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier$Builder;->transport:Lcom/google/api/client/http/HttpTransport;

    iget-object v3, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier$Builder;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;-><init>(Ljava/util/Set;Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)V

    return-object v0
.end method

.method public final getClientIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 413
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier$Builder;->clientIds:Ljava/util/Set;

    return-object v0
.end method

.method public final getJsonFactory()Lcom/google/api/client/json/JsonFactory;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier$Builder;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    return-object v0
.end method

.method public final getTransport()Lcom/google/api/client/http/HttpTransport;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier$Builder;->transport:Lcom/google/api/client/http/HttpTransport;

    return-object v0
.end method

.method public setClientIds(Ljava/lang/Iterable;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier$Builder;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier$Builder;"
        }
    .end annotation

    .prologue
    .line 425
    .local p1, clientIds:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier$Builder;->clientIds:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 426
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 427
    .local v0, clientId:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier$Builder;->clientIds:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 429
    .end local v0           #clientId:Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public varargs setClientIds([Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier$Builder;
    .locals 1
    .parameter "clientIds"

    .prologue
    .line 441
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier$Builder;->clientIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 442
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier$Builder;->clientIds:Ljava/util/Set;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 443
    return-object p0
.end method
