.class public final Lcom/discord/utilities/analytics/AnalyticsTracker$trackUserVoiceEvent$1$1;
.super Ld0/z/d/o;
.source "AnalyticsTracker.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/discord/utilities/analytics/AnalyticsTracker$trackUserVoiceEvent$1;->invoke(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld0/z/d/o;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "+",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "",
        "",
        "",
        "invoke",
        "()Ljava/util/Map;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field public final synthetic $gameProperties:Ljava/util/Map;

.field public final synthetic this$0:Lcom/discord/utilities/analytics/AnalyticsTracker$trackUserVoiceEvent$1;


# direct methods
.method public constructor <init>(Lcom/discord/utilities/analytics/AnalyticsTracker$trackUserVoiceEvent$1;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/discord/utilities/analytics/AnalyticsTracker$trackUserVoiceEvent$1$1;->this$0:Lcom/discord/utilities/analytics/AnalyticsTracker$trackUserVoiceEvent$1;

    iput-object p2, p0, Lcom/discord/utilities/analytics/AnalyticsTracker$trackUserVoiceEvent$1$1;->$gameProperties:Ljava/util/Map;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ld0/z/d/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/discord/utilities/analytics/AnalyticsTracker$trackUserVoiceEvent$1$1;->invoke()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/discord/utilities/analytics/AnalyticsTracker$trackUserVoiceEvent$1$1;->$gameProperties:Ljava/util/Map;

    iget-object v1, p0, Lcom/discord/utilities/analytics/AnalyticsTracker$trackUserVoiceEvent$1$1;->this$0:Lcom/discord/utilities/analytics/AnalyticsTracker$trackUserVoiceEvent$1;

    iget-object v1, v1, Lcom/discord/utilities/analytics/AnalyticsTracker$trackUserVoiceEvent$1;->$inputMode:Ljava/lang/String;

    const-string v2, "mode"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/discord/utilities/analytics/AnalyticsTracker$trackUserVoiceEvent$1$1;->$gameProperties:Ljava/util/Map;

    iget-object v1, p0, Lcom/discord/utilities/analytics/AnalyticsTracker$trackUserVoiceEvent$1$1;->this$0:Lcom/discord/utilities/analytics/AnalyticsTracker$trackUserVoiceEvent$1;

    iget-object v1, v1, Lcom/discord/utilities/analytics/AnalyticsTracker$trackUserVoiceEvent$1;->$this_trackUserVoiceEvent:Lcom/discord/api/channel/Channel;

    invoke-virtual {v1}, Lcom/discord/api/channel/Channel;->k()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "channel"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/discord/utilities/analytics/AnalyticsTracker$trackUserVoiceEvent$1$1;->$gameProperties:Ljava/util/Map;

    iget-object v1, p0, Lcom/discord/utilities/analytics/AnalyticsTracker$trackUserVoiceEvent$1$1;->this$0:Lcom/discord/utilities/analytics/AnalyticsTracker$trackUserVoiceEvent$1;

    iget-object v1, v1, Lcom/discord/utilities/analytics/AnalyticsTracker$trackUserVoiceEvent$1;->$this_trackUserVoiceEvent:Lcom/discord/api/channel/Channel;

    invoke-virtual {v1}, Lcom/discord/api/channel/Channel;->D()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "channel_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcom/discord/utilities/analytics/AnalyticsTracker$trackUserVoiceEvent$1$1;->$gameProperties:Ljava/util/Map;

    iget-object v1, p0, Lcom/discord/utilities/analytics/AnalyticsTracker$trackUserVoiceEvent$1$1;->this$0:Lcom/discord/utilities/analytics/AnalyticsTracker$trackUserVoiceEvent$1;

    iget-object v1, v1, Lcom/discord/utilities/analytics/AnalyticsTracker$trackUserVoiceEvent$1;->$this_trackUserVoiceEvent:Lcom/discord/api/channel/Channel;

    invoke-virtual {v1}, Lcom/discord/api/channel/Channel;->i()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "server"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/discord/utilities/analytics/AnalyticsTracker$trackUserVoiceEvent$1$1;->$gameProperties:Ljava/util/Map;

    return-object v0
.end method
