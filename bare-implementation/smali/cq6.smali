.class public final synthetic Lcq6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Liq6;

.field public final synthetic b:Landroid/content/ComponentName;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Liq6;Landroid/content/ComponentName;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcq6;->a:Liq6;

    .line 5
    .line 6
    iput-object p2, p0, Lcq6;->b:Landroid/content/ComponentName;

    .line 7
    .line 8
    iput p3, p0, Lcq6;->c:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcq6;->b:Landroid/content/ComponentName;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcq6;->a:Liq6;

    .line 7
    .line 8
    iget p0, p0, Lcq6;->c:I

    .line 9
    .line 10
    invoke-virtual {v1, p0, v0}, Liq6;->j(ILandroid/content/ComponentName;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
