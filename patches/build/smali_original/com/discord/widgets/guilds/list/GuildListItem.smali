.class public abstract Lcom/discord/widgets/guilds/list/GuildListItem;
.super Ljava/lang/Object;
.source "GuildListItem.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/discord/widgets/guilds/list/GuildListItem$GuildItem;,
        Lcom/discord/widgets/guilds/list/GuildListItem$FolderItem;,
        Lcom/discord/widgets/guilds/list/GuildListItem$PrivateChannelItem;,
        Lcom/discord/widgets/guilds/list/GuildListItem$UnavailableItem;,
        Lcom/discord/widgets/guilds/list/GuildListItem$FriendsItem;,
        Lcom/discord/widgets/guilds/list/GuildListItem$DividerItem;,
        Lcom/discord/widgets/guilds/list/GuildListItem$CreateItem;,
        Lcom/discord/widgets/guilds/list/GuildListItem$HubItem;,
        Lcom/discord/widgets/guilds/list/GuildListItem$HelpItem;,
        Lcom/discord/widgets/guilds/list/GuildListItem$SpaceItem;,
        Lcom/discord/widgets/guilds/list/GuildListItem$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u0000 \t2\u00020\u0001:\u000b\t\n\u000b\u000c\r\u000e\u000f\u0010\u0011\u0012\u0013B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\u0082\u0001\n\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/discord/widgets/guilds/list/GuildListItem;",
        "",
        "",
        "itemId",
        "J",
        "getItemId",
        "()J",
        "<init>",
        "(J)V",
        "Companion",
        "CreateItem",
        "DividerItem",
        "FolderItem",
        "FriendsItem",
        "GuildItem",
        "HelpItem",
        "HubItem",
        "PrivateChannelItem",
        "SpaceItem",
        "UnavailableItem",
        "Lcom/discord/widgets/guilds/list/GuildListItem$GuildItem;",
        "Lcom/discord/widgets/guilds/list/GuildListItem$FolderItem;",
        "Lcom/discord/widgets/guilds/list/GuildListItem$PrivateChannelItem;",
        "Lcom/discord/widgets/guilds/list/GuildListItem$UnavailableItem;",
        "Lcom/discord/widgets/guilds/list/GuildListItem$FriendsItem;",
        "Lcom/discord/widgets/guilds/list/GuildListItem$DividerItem;",
        "Lcom/discord/widgets/guilds/list/GuildListItem$CreateItem;",
        "Lcom/discord/widgets/guilds/list/GuildListItem$HubItem;",
        "Lcom/discord/widgets/guilds/list/GuildListItem$HelpItem;",
        "Lcom/discord/widgets/guilds/list/GuildListItem$SpaceItem;",
        "app_productionGoogleRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final Companion:Lcom/discord/widgets/guilds/list/GuildListItem$Companion;

.field private static final ID_BOTTOM_NAV_SPACE:J = -0x6L

.field private static final ID_CREATE:J = -0x3L

.field private static final ID_DIVIDER:J = -0x4L

.field private static final ID_FRIENDS_LIST:J = -0x2L

.field private static final ID_HELP:J = -0x5L

.field private static final ID_HUB:J = -0x8L

.field public static final ID_PENDING_GUILDS_FOLDER:J = -0x7L

.field private static final ID_UNIDENTIFIED:J = -0x1L

.field public static final TYPE_BOTTOM_NAV_SPACE:I = 0x8

.field public static final TYPE_CREATE:I = 0x5

.field public static final TYPE_DIVIDER:I = 0x1

.field public static final TYPE_DM:I = 0x2

.field public static final TYPE_FOLDER:I = 0x6

.field public static final TYPE_FRIENDS:I = 0x0

.field public static final TYPE_GUILD:I = 0x3

.field public static final TYPE_HELP:I = 0x7

.field public static final TYPE_HUB:I = 0x9

.field public static final TYPE_UNAVAILABLE:I = 0x4


# instance fields
.field private final itemId:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/discord/widgets/guilds/list/GuildListItem$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/discord/widgets/guilds/list/GuildListItem$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/discord/widgets/guilds/list/GuildListItem;->Companion:Lcom/discord/widgets/guilds/list/GuildListItem$Companion;

    return-void
.end method

.method private constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/discord/widgets/guilds/list/GuildListItem;->itemId:J

    return-void
.end method

.method public synthetic constructor <init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/discord/widgets/guilds/list/GuildListItem;-><init>(J)V

    return-void
.end method


# virtual methods
.method public final getItemId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/discord/widgets/guilds/list/GuildListItem;->itemId:J

    return-wide v0
.end method
