.class public final Lcom/discord/stores/StoreUserSettingsSystem$setFontScale$2;
.super Ld0/z/d/o;
.source "StoreUserSettingsSystem.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/discord/stores/StoreUserSettingsSystem;->setFontScale(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld0/z/d/o;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "",
        "invoke",
        "()V",
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
.field public final synthetic $fontScale:I

.field public final synthetic this$0:Lcom/discord/stores/StoreUserSettingsSystem;


# direct methods
.method public constructor <init>(Lcom/discord/stores/StoreUserSettingsSystem;I)V
    .locals 0

    iput-object p1, p0, Lcom/discord/stores/StoreUserSettingsSystem$setFontScale$2;->this$0:Lcom/discord/stores/StoreUserSettingsSystem;

    iput p2, p0, Lcom/discord/stores/StoreUserSettingsSystem$setFontScale$2;->$fontScale:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ld0/z/d/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/discord/stores/StoreUserSettingsSystem$setFontScale$2;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/discord/stores/StoreUserSettingsSystem$setFontScale$2;->this$0:Lcom/discord/stores/StoreUserSettingsSystem;

    invoke-static {v0}, Lcom/discord/stores/StoreUserSettingsSystem;->access$getSettings$p(Lcom/discord/stores/StoreUserSettingsSystem;)Lcom/discord/stores/StoreUserSettingsSystem$Settings;

    move-result-object v1

    iget v4, p0, Lcom/discord/stores/StoreUserSettingsSystem$setFontScale$2;->$fontScale:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/discord/stores/StoreUserSettingsSystem$Settings;->copy$default(Lcom/discord/stores/StoreUserSettingsSystem$Settings;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Lcom/discord/stores/StoreUserSettingsSystem$Settings;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/discord/stores/StoreUserSettingsSystem;->access$setSettings$p(Lcom/discord/stores/StoreUserSettingsSystem;Lcom/discord/stores/StoreUserSettingsSystem$Settings;)V

    .line 3
    iget-object v0, p0, Lcom/discord/stores/StoreUserSettingsSystem$setFontScale$2;->this$0:Lcom/discord/stores/StoreUserSettingsSystem;

    invoke-virtual {v0}, Lcom/discord/stores/StoreV2;->markChanged()V

    .line 4
    iget-object v0, p0, Lcom/discord/stores/StoreUserSettingsSystem$setFontScale$2;->this$0:Lcom/discord/stores/StoreUserSettingsSystem;

    # getter for: Lcom/discord/stores/StoreUserSettingsSystem;->onFontScaleUpdated:Lkotlin/jvm/functions/Function1;
    invoke-static {v0}, Lcom/discord/stores/StoreUserSettingsSystem;->access$getOnFontScaleUpdated$p(Lcom/discord/stores/StoreUserSettingsSystem;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    iget v1, p0, Lcom/discord/stores/StoreUserSettingsSystem$setFontScale$2;->$fontScale:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
