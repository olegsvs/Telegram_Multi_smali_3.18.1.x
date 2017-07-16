.class Lorg/telegram/ui/Components/Paint/Shader$CompilationResult;
.super Ljava/lang/Object;
.source "Shader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Paint/Shader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CompilationResult"
.end annotation


# instance fields
.field shader:I

.field status:I

.field final synthetic this$0:Lorg/telegram/ui/Components/Paint/Shader;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Paint/Shader;II)V
    .locals 0
    .param p2, "shader"    # I
    .param p3, "status"    # I

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Shader$CompilationResult;->this$0:Lorg/telegram/ui/Components/Paint/Shader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/telegram/ui/Components/Paint/Shader$CompilationResult;->shader:I

    iput p3, p0, Lorg/telegram/ui/Components/Paint/Shader$CompilationResult;->status:I

    return-void
.end method
