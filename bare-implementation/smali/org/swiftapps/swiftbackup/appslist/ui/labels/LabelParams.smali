.class public final Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljl0;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lhr4;

.field private static final LABEL_ID_BACKUPS_WITH_NOTES:Ljava/lang/String; = "__backups_with_notes"

.field private static final LABEL_ID_FAVORITE_APPS:Ljava/lang/String; = "__favorite_apps"

.field private static final LABEL_ID_INSTALLED_FROM_GOOGLE_PLAY:Ljava/lang/String; = "__installed_from_google_play"

.field private static final LABEL_ID_MULTIPLE_BACKUPS:Ljava/lang/String; = "__apps_with_multiple_backups"

.field private static final LABEL_ID_NOT_INSTALLED_FROM_GOOGLE_PLAY:Ljava/lang/String; = "__not_installed_from_google_play"

.field private static final LABEL_ID_PROTECTED_BACKUPS:Ljava/lang/String; = "__apps_with_protected_backups"

.field private static final LABEL_ID_SYSTEM_APPS_LABELLED_FAVORITES:Ljava/lang/String; = "__system_apps_labelled_favorites"

.field private static final LABEL_ID_SYSTEM_APPS_LAUNCHABLE:Ljava/lang/String; = "__system_apps_launchable"

.field private static final LABEL_ID_SYSTEM_APPS_NOT_LABELLED:Ljava/lang/String; = "__system_apps_not_labelled"

.field private static final LABEL_ID_SYSTEM_APPS_UPDATED:Ljava/lang/String; = "__system_apps_updated"

.field private static final LABEL_ID_USER_APPS:Ljava/lang/String; = "__user_apps"

.field private static final LABEL_ID_USER_APPS_LABELLED:Ljava/lang/String; = "__user_apps_labelled"

.field private static final LABEL_ID_USER_APPS_NOT_LABELLED:Ljava/lang/String; = "__user_apps_not_labelled"


# instance fields
.field private final blackTextContrast$delegate:Los4;
    .annotation runtime Ljz2;
    .end annotation

    .annotation runtime Lx14;
    .end annotation
.end field

.field private final color:Ljava/lang/String;

.field private final colorInt$delegate:Los4;
    .annotation runtime Ljz2;
    .end annotation

    .annotation runtime Lx14;
    .end annotation
.end field

.field private final id:Ljava/lang/String;

.field private final isBuiltInLabel$delegate:Los4;
    .annotation runtime Ljz2;
    .end annotation

    .annotation runtime Lx14;
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final whiteTextContrast$delegate:Los4;
    .annotation runtime Ljz2;
    .end annotation

    .annotation runtime Lx14;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lhr4;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->Companion:Lhr4;

    .line 7
    .line 8
    new-instance v0, Lyj0;

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    invoke-direct {v0, v1}, Lyj0;-><init>(I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 66
    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->id:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->name:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->color:Ljava/lang/String;

    .line 9
    .line 10
    new-instance p1, Lgj;

    .line 11
    .line 12
    const/16 p2, 0x19

    .line 13
    .line 14
    invoke-direct {p1, p0, p2}, Lgj;-><init>(Ljava/lang/Object;I)V

    .line 15
    .line 16
    .line 17
    new-instance p2, Lgv7;

    .line 18
    .line 19
    invoke-direct {p2, p1}, Lgv7;-><init>(Lbt3;)V

    .line 20
    .line 21
    .line 22
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->isBuiltInLabel$delegate:Los4;

    .line 23
    .line 24
    new-instance p1, Lak;

    .line 25
    .line 26
    const/16 p2, 0x17

    .line 27
    .line 28
    invoke-direct {p1, p0, p2}, Lak;-><init>(Ljava/lang/Object;I)V

    .line 29
    .line 30
    .line 31
    new-instance p2, Lgv7;

    .line 32
    .line 33
    invoke-direct {p2, p1}, Lgv7;-><init>(Lbt3;)V

    .line 34
    .line 35
    .line 36
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->colorInt$delegate:Los4;

    .line 37
    .line 38
    new-instance p1, Lbk;

    .line 39
    .line 40
    const/16 p2, 0x1a

    .line 41
    .line 42
    invoke-direct {p1, p0, p2}, Lbk;-><init>(Ljava/lang/Object;I)V

    .line 43
    .line 44
    .line 45
    new-instance p2, Lgv7;

    .line 46
    .line 47
    invoke-direct {p2, p1}, Lgv7;-><init>(Lbt3;)V

    .line 48
    .line 49
    .line 50
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->whiteTextContrast$delegate:Los4;

    .line 51
    .line 52
    new-instance p1, Lgr4;

    .line 53
    .line 54
    const/4 p2, 0x0

    .line 55
    invoke-direct {p1, p0, p2}, Lgr4;-><init>(Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;I)V

    .line 56
    .line 57
    .line 58
    new-instance p2, Lgv7;

    .line 59
    .line 60
    invoke-direct {p2, p1}, Lgv7;-><init>(Lbt3;)V

    .line 61
    .line 62
    .line 63
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->blackTextContrast$delegate:Los4;

    .line 64
    .line 65
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 67
    const-string p3, "#000000"

    .line 68
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final blackTextContrast_delegate$lambda$0(Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;)D
    .locals 2

    .line 1
    sget-object v0, Lsl1;->e:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->getColorInt()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const/high16 v0, -0x1000000

    .line 8
    .line 9
    invoke-static {v0, p0}, Lxl1;->c(II)D

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public static synthetic c(Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->colorInt_delegate$lambda$0(Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static final colorInt_delegate$lambda$0(Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->color:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static synthetic copy$default(Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->id:Ljava/lang/String;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p5, p4, 0x2

    .line 8
    .line 9
    if-eqz p5, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->name:Ljava/lang/String;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p4, p4, 0x4

    .line 14
    .line 15
    if-eqz p4, :cond_2

    .line 16
    .line 17
    iget-object p3, p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->color:Ljava/lang/String;

    .line 18
    .line 19
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public static synthetic e(Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;)D
    .locals 2

    .line 1
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->whiteTextContrast_delegate$lambda$0(Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;)D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static synthetic g(Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;)D
    .locals 2

    .line 1
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->blackTextContrast_delegate$lambda$0(Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;)D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static synthetic getBlackTextContrast$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getColorInt$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getWhiteTextContrast$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic isBuiltInLabel$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private static final isBuiltInLabel_delegate$lambda$0(Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;)Z
    .locals 1

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->Companion:Lhr4;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->id:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lhr4;->c(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public static synthetic l(Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->isBuiltInLabel_delegate$lambda$0(Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static final whiteTextContrast_delegate$lambda$0(Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;)D
    .locals 2

    .line 1
    sget-object v0, Lsl1;->e:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->getColorInt()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const/4 v0, -0x1

    .line 8
    invoke-static {v0, p0}, Lxl1;->c(II)D

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    return-wide v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->color:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;
    .locals 0

    .line 1
    new-instance p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final describeContents()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 12
    .line 13
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->id:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->id:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->name:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->name:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->color:Ljava/lang/String;

    .line 36
    .line 37
    iget-object p1, p1, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->color:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-nez p0, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    return v0
.end method

.method public final getBlackTextContrast()D
    .locals 2
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->blackTextContrast$delegate:Los4;

    .line 2
    .line 3
    invoke-interface {p0}, Los4;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public final getColor()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->color:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getColorInt()I
    .locals 0
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->colorInt$delegate:Los4;

    .line 2
    .line 3
    invoke-interface {p0}, Los4;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public getCopy()Ljl0;
    .locals 6
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    const/4 v4, 0x7

    .line 2
    const/4 v5, 0x0

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    move-object v0, p0

    .line 7
    invoke-static/range {v0 .. v5}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->copy$default(Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final getId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->id:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getRippleColor(Landroid/content/Context;I)I
    .locals 1
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->isBuiltInLabel()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->getColorInt()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    const/16 p1, 0x32

    .line 15
    .line 16
    invoke-static {p0, p1}, Lxl1;->g(II)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0

    .line 21
    :cond_0
    sget-object p0, Lsl1;->e:Lgv7;

    .line 22
    .line 23
    const/high16 p0, -0x1000000

    .line 24
    .line 25
    if-ne p2, p0, :cond_1

    .line 26
    .line 27
    const p0, 0x7f060037

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const p0, 0x7f0604e6

    .line 32
    .line 33
    .line 34
    :goto_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->getColor(I)I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    return p0
.end method

.method public final getTextColor(Z)I
    .locals 4
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->isBuiltInLabel()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->getColorInt()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    sget-object v0, Lsl1;->e:Lgv7;

    .line 13
    .line 14
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->getBlackTextContrast()D

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->getWhiteTextContrast()D

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    const-wide/high16 p0, 0x4008000000000000L    # 3.0

    .line 25
    .line 26
    cmpl-double p0, v0, p0

    .line 27
    .line 28
    if-lez p0, :cond_2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const-wide/high16 p0, 0x4000000000000000L    # 2.0

    .line 32
    .line 33
    cmpl-double p0, v2, p0

    .line 34
    .line 35
    if-lez p0, :cond_3

    .line 36
    .line 37
    :cond_2
    const/4 p0, -0x1

    .line 38
    return p0

    .line 39
    :cond_3
    :goto_0
    const/high16 p0, -0x1000000

    .line 40
    .line 41
    return p0
.end method

.method public final getWhiteTextContrast()D
    .locals 2
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->whiteTextContrast$delegate:Los4;

    .line 2
    .line 3
    invoke-interface {p0}, Los4;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->id:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->name:Ljava/lang/String;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    move v2, v1

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    :goto_1
    add-int/2addr v0, v2

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->color:Ljava/lang/String;

    .line 28
    .line 29
    if-nez p0, :cond_2

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    :goto_2
    add-int/2addr v0, v1

    .line 37
    return v0
.end method

.method public final isBuiltInLabel()Z
    .locals 0
    .annotation runtime Ljz2;
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->isBuiltInLabel$delegate:Los4;

    .line 2
    .line 3
    invoke-interface {p0}, Los4;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->id:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->name:Ljava/lang/String;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->color:Ljava/lang/String;

    .line 6
    .line 7
    const-string v2, ", name="

    .line 8
    .line 9
    const-string v3, ", color="

    .line 10
    .line 11
    const-string v4, "LabelParams(id="

    .line 12
    .line 13
    invoke-static {v4, v0, v2, v1, v3}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, ")"

    .line 18
    .line 19
    invoke-static {v0, p0, v1}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->id:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->name:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->color:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
