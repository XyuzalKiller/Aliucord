.class public Lcom/adjust/sdk/AttributionHandler$2;
.super Ljava/lang/Object;
.source "AttributionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adjust/sdk/AttributionHandler;->getAttribution()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/adjust/sdk/AttributionHandler;


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/AttributionHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/adjust/sdk/AttributionHandler$2;->this$0:Lcom/adjust/sdk/AttributionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/AttributionHandler$2;->this$0:Lcom/adjust/sdk/AttributionHandler;

    const-string/jumbo v1, "sdk"

    # setter for: Lcom/adjust/sdk/AttributionHandler;->lastInitiatedBy:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/adjust/sdk/AttributionHandler;->access$102(Lcom/adjust/sdk/AttributionHandler;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/adjust/sdk/AttributionHandler$2;->this$0:Lcom/adjust/sdk/AttributionHandler;

    const-wide/16 v1, 0x0

    # invokes: Lcom/adjust/sdk/AttributionHandler;->getAttributionI(J)V
    invoke-static {v0, v1, v2}, Lcom/adjust/sdk/AttributionHandler;->access$200(Lcom/adjust/sdk/AttributionHandler;J)V

    return-void
.end method
