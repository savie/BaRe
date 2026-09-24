.class public final Lc25;
.super Lcd;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic d:Lxx7;


# direct methods
.method public constructor <init>(Lxx7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc25;->d:Lxx7;

    .line 2
    .line 3
    const/16 p1, 0x9

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcd;-><init>(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final e(Loe;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Lc25;->d:Lxx7;

    .line 2
    .line 3
    iget p0, p0, Lxx7;->a:I

    .line 4
    .line 5
    sget p1, Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;->c0:I

    .line 6
    .line 7
    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    .line 8
    .line 9
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 10
    .line 11
    invoke-direct {p1, p0, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 12
    .line 13
    .line 14
    return-object p1
.end method
