.class public final Lcom/discord/overlay/views/OverlayBubbleWrap$b;
.super Ljava/lang/Object;
.source "View.kt"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/discord/overlay/views/OverlayBubbleWrap;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic j:Lcom/discord/overlay/views/OverlayBubbleWrap;


# direct methods
.method public constructor <init>(Lcom/discord/overlay/views/OverlayBubbleWrap;)V
    .locals 0

    iput-object p1, p0, Lcom/discord/overlay/views/OverlayBubbleWrap$b;->j:Lcom/discord/overlay/views/OverlayBubbleWrap;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    const-string/jumbo p2, "view"

    invoke-static {p1, p2}, Ld0/z/d/m;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2
    iget-object p1, p0, Lcom/discord/overlay/views/OverlayBubbleWrap$b;->j:Lcom/discord/overlay/views/OverlayBubbleWrap;

    .line 3
    sget-object p2, Lcom/discord/overlay/views/OverlayBubbleWrap;->j:[Lkotlin/reflect/KProperty;

    .line 4
    invoke-virtual {p1}, Lcom/discord/overlay/views/OverlayBubbleWrap;->d()V

    return-void
.end method
