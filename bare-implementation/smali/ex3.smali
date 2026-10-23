.class public final Lex3;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Llx3;


# direct methods
.method public constructor <init>(Llx3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lex3;->a:Llx3;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getChangingConfigurations()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    new-instance v0, Lfx3;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lfx3;-><init>(Lex3;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 7
    new-instance p1, Lfx3;

    invoke-direct {p1, p0}, Lfx3;-><init>(Lex3;)V

    return-object p1
.end method
