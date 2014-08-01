.class public Lcom/google/api/client/http/json/JsonHttpClient$Builder;
.super Ljava/lang/Object;
.source "JsonHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/http/json/JsonHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private applicationName:Ljava/lang/String;

.field private baseUrl:Lcom/google/api/client/http/GenericUrl;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private baseUrlUsed:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private httpRequestInitializer:Lcom/google/api/client/http/HttpRequestInitializer;

.field private final jsonFactory:Lcom/google/api/client/json/JsonFactory;

.field private jsonHttpRequestInitializer:Lcom/google/api/client/http/json/JsonHttpRequestInitializer;

.field private jsonObjectParser:Lcom/google/api/client/json/JsonObjectParser;

.field private rootUrl:Ljava/lang/String;

.field private servicePath:Ljava/lang/String;

.field private final transport:Lcom/google/api/client/http/HttpTransport;


# direct methods
.method protected constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/GenericUrl;)V
    .locals 1
    .parameter "transport"
    .parameter "jsonFactory"
    .parameter "baseUrl"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 597
    iput-object p1, p0, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->transport:Lcom/google/api/client/http/HttpTransport;

    .line 598
    iput-object p2, p0, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    .line 599
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->baseUrlUsed:Z

    .line 600
    invoke-virtual {p0, p3}, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->setBaseUrl(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/http/json/JsonHttpClient$Builder;

    .line 601
    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/http/HttpRequestInitializer;)V
    .locals 0
    .parameter "transport"
    .parameter "jsonFactory"
    .parameter "rootUrl"
    .parameter "servicePath"
    .parameter "httpRequestInitializer"

    .prologue
    .line 617
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 618
    iput-object p1, p0, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->transport:Lcom/google/api/client/http/HttpTransport;

    .line 619
    iput-object p2, p0, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    .line 620
    invoke-virtual {p0, p3}, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->setRootUrl(Ljava/lang/String;)Lcom/google/api/client/http/json/JsonHttpClient$Builder;

    .line 621
    invoke-virtual {p0, p4}, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->setServicePath(Ljava/lang/String;)Lcom/google/api/client/http/json/JsonHttpClient$Builder;

    .line 622
    iput-object p5, p0, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->httpRequestInitializer:Lcom/google/api/client/http/HttpRequestInitializer;

    .line 623
    return-void
.end method


# virtual methods
.method public build()Lcom/google/api/client/http/json/JsonHttpClient;
    .locals 9

    .prologue
    .line 629
    iget-object v0, p0, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->applicationName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    sget-object v0, Lcom/google/api/client/http/json/JsonHttpClient;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "Application name is not set. Call setApplicationName."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 632
    :cond_0
    iget-boolean v0, p0, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->baseUrlUsed:Z

    if-eqz v0, :cond_1

    .line 633
    new-instance v0, Lcom/google/api/client/http/json/JsonHttpClient;

    iget-object v1, p0, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->transport:Lcom/google/api/client/http/HttpTransport;

    iget-object v2, p0, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->jsonHttpRequestInitializer:Lcom/google/api/client/http/json/JsonHttpRequestInitializer;

    iget-object v3, p0, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->httpRequestInitializer:Lcom/google/api/client/http/HttpRequestInitializer;

    iget-object v4, p0, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    iget-object v5, p0, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->jsonObjectParser:Lcom/google/api/client/json/JsonObjectParser;

    iget-object v6, p0, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->baseUrl:Lcom/google/api/client/http/GenericUrl;

    invoke-virtual {v6}, Lcom/google/api/client/http/GenericUrl;->build()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->applicationName:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Lcom/google/api/client/http/json/JsonHttpClient;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/http/json/JsonHttpRequestInitializer;Lcom/google/api/client/http/HttpRequestInitializer;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/json/JsonObjectParser;Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/google/api/client/http/json/JsonHttpClient;

    iget-object v1, p0, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->transport:Lcom/google/api/client/http/HttpTransport;

    iget-object v2, p0, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->jsonHttpRequestInitializer:Lcom/google/api/client/http/json/JsonHttpRequestInitializer;

    iget-object v3, p0, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->httpRequestInitializer:Lcom/google/api/client/http/HttpRequestInitializer;

    iget-object v4, p0, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    iget-object v5, p0, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->jsonObjectParser:Lcom/google/api/client/json/JsonObjectParser;

    iget-object v6, p0, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->rootUrl:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->servicePath:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->applicationName:Ljava/lang/String;

    invoke-direct/range {v0 .. v8}, Lcom/google/api/client/http/json/JsonHttpClient;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/http/json/JsonHttpRequestInitializer;Lcom/google/api/client/http/HttpRequestInitializer;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/json/JsonObjectParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final getApplicationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 869
    iget-object v0, p0, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->applicationName:Ljava/lang/String;

    return-object v0
.end method

.method public final getBaseUrl()Lcom/google/api/client/http/GenericUrl;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 717
    iget-boolean v0, p0, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->baseUrlUsed:Z

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 718
    iget-object v0, p0, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->baseUrl:Lcom/google/api/client/http/GenericUrl;

    return-object v0
.end method

.method public final getHttpRequestInitializer()Lcom/google/api/client/http/HttpRequestInitializer;
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->httpRequestInitializer:Lcom/google/api/client/http/HttpRequestInitializer;

    return-object v0
.end method

.method public final getJsonFactory()Lcom/google/api/client/json/JsonFactory;
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    return-object v0
.end method

.method public getJsonHttpRequestInitializer()Lcom/google/api/client/http/json/JsonHttpRequestInitializer;
    .locals 1

    .prologue
    .line 838
    iget-object v0, p0, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->jsonHttpRequestInitializer:Lcom/google/api/client/http/json/JsonHttpRequestInitializer;

    return-object v0
.end method

.method public final getObjectParser()Lcom/google/api/client/json/JsonObjectParser;
    .locals 1

    .prologue
    .line 684
    iget-object v0, p0, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->jsonObjectParser:Lcom/google/api/client/json/JsonObjectParser;

    return-object v0
.end method

.method public final getRootUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 755
    iget-boolean v0, p0, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->baseUrlUsed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "root URL cannot be used if base URL is used."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 756
    iget-object v0, p0, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->rootUrl:Ljava/lang/String;

    return-object v0

    .line 755
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getServicePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 793
    iget-boolean v0, p0, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->baseUrlUsed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "service path cannot be used if base URL is used."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 794
    iget-object v0, p0, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->servicePath:Ljava/lang/String;

    return-object v0

    .line 793
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getTransport()Lcom/google/api/client/http/HttpTransport;
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->transport:Lcom/google/api/client/http/HttpTransport;

    return-object v0
.end method

.method protected final isBaseUrlUsed()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 660
    iget-boolean v0, p0, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->baseUrlUsed:Z

    return v0
.end method

.method public setApplicationName(Ljava/lang/String;)Lcom/google/api/client/http/json/JsonHttpClient$Builder;
    .locals 0
    .parameter "applicationName"

    .prologue
    .line 860
    iput-object p1, p0, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->applicationName:Ljava/lang/String;

    .line 861
    return-object p0
.end method

.method public setBaseUrl(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/http/json/JsonHttpClient$Builder;
    .locals 2
    .parameter "baseUrl"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 737
    iget-boolean v0, p0, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->baseUrlUsed:Z

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 738
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/GenericUrl;

    iput-object v0, p0, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->baseUrl:Lcom/google/api/client/http/GenericUrl;

    .line 739
    invoke-virtual {p1}, Lcom/google/api/client/http/GenericUrl;->build()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 740
    return-object p0
.end method

.method public setHttpRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/http/json/JsonHttpClient$Builder;
    .locals 0
    .parameter "httpRequestInitializer"

    .prologue
    .line 846
    iput-object p1, p0, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->httpRequestInitializer:Lcom/google/api/client/http/HttpRequestInitializer;

    .line 847
    return-object p0
.end method

.method public setJsonHttpRequestInitializer(Lcom/google/api/client/http/json/JsonHttpRequestInitializer;)Lcom/google/api/client/http/json/JsonHttpClient$Builder;
    .locals 0
    .parameter "jsonHttpRequestInitializer"

    .prologue
    .line 832
    iput-object p1, p0, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->jsonHttpRequestInitializer:Lcom/google/api/client/http/json/JsonHttpRequestInitializer;

    .line 833
    return-object p0
.end method

.method public setObjectParser(Lcom/google/api/client/json/JsonObjectParser;)Lcom/google/api/client/http/json/JsonHttpClient$Builder;
    .locals 0
    .parameter "parser"

    .prologue
    .line 698
    iput-object p1, p0, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->jsonObjectParser:Lcom/google/api/client/json/JsonObjectParser;

    .line 699
    return-object p0
.end method

.method public setRootUrl(Ljava/lang/String;)Lcom/google/api/client/http/json/JsonHttpClient$Builder;
    .locals 2
    .parameter "rootUrl"

    .prologue
    .line 772
    iget-boolean v0, p0, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->baseUrlUsed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "root URL cannot be used if base URL is used."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 773
    const-string v0, "root URL cannot be null."

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "root URL must end with a \"/\"."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 775
    iput-object p1, p0, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->rootUrl:Ljava/lang/String;

    .line 776
    return-object p0

    .line 772
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setServicePath(Ljava/lang/String;)Lcom/google/api/client/http/json/JsonHttpClient$Builder;
    .locals 4
    .parameter "servicePath"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 812
    iget-boolean v0, p0, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->baseUrlUsed:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "service path cannot be used if base URL is used."

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 813
    const-string v0, "service path cannot be null."

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    .line 814
    .restart local p1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 815
    const-string v0, "/"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "service path must equal \"/\" if it is of length 1."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 817
    const-string p1, ""

    .line 822
    :cond_0
    :goto_1
    iput-object p1, p0, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->servicePath:Ljava/lang/String;

    .line 823
    return-object p0

    :cond_1
    move v0, v2

    .line 812
    goto :goto_0

    .line 818
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 819
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_2
    const-string v0, "service path must end with a \"/\" and not begin with a \"/\"."

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method
