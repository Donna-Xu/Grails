  } catch (ValidationException e) {
            respond product.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'product.label', default: 'Pro$                redirect product
            }
            '*'{ respond product, [status: OK] }
        }
    }
    @Secured('ROLE_ADMIN')
    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        productService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'product.label', default: 'Pro$                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }
